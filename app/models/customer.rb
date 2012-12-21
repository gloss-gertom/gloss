# Load the Digest Library for encrypting password
require 'digest'
class Customer < ActiveRecord::Base
  #
  has_many :orders

  attr_accessible :username, :hashed_password, :first_name,
                   :last_name, :address_1, :address_2,
                   :address_3, :city, :postcode,
                   :county, :country, :tel_no, :email, :password

  # No password column therefore
  # No password method created by Active Record
  # Create own attribute to use
  attr_accessor :password

  # Validate username - check that username not already assigned,
  # min length 5 and max length 12
  validates :username, :uniqueness => true,
                      :length => {:within => 5..12}


  # Validate Password
  validates :password, :confirmation => true,
                      :length => {:within => 4..15 },
                       :if => :password_required?

  # Validate email - check the email has not already used and
  #                - in correct format
  validates :email, :presence => true,
                    #TODO removed uniqueness for testing purposes
                    #:uniqueness => true,
                    :format => {:with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i}

  # Run encrypt_password before saving record
  before_save :encrypt_password

  # Method accepts username and password
  # Check for customer with matching username
  # Pass password to authenticated
  # If both customer and password are confirmed then user is authenticated
  def self.authenticate(username, password)
    customer = find_by_username(username)
    return customer if customer && customer.authenticated?(password)
  end

  # Check password against stored hashed password
  def authenticated?(password)
    self.hashed_password == encrypt(password)
  end

  protected

  # Perform encryption if password contains a value
  def encrypt_password
    # If password blank no need to go any further
    return if password.blank?
    # If the password is set we have some work to do
    self.hashed_password =encrypt(password)
  end

   #Predicate Method - Return true or false
  def password_required?
    hashed_password.blank? || password.present?
  end

  # encrypt returns an encrypted string
  def encrypt(string)
    Digest::SHA1.hexdigest(string)
  end

end
