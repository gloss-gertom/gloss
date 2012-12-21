# Class based on order model created in Agile web development   C.12
class Order < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  # setting up an association with the customer, to give us access
  # to the attributes stored in the customers table
  # in order to pre-populate the order form
  belongs_to :customer

  attr_accessible :username, :first_name,
                  :last_name, :address_1, :address_2,
                  :address_3, :city, :postcode,
                  :county, :country, :tel_no, :email

  # Validate username - check that username not already assigned,
  # min length 5 and max length 12
  validates :username, :presence => true,
            :length => {:within => 4..12}

  validates :first_name, :last_name, :address_1, :address_2, :address_3,
            :city, :country, :tel_no, presence: true

  # Validate email - check the email has not already used and
  #                - in correct format
  validates :email, :presence => true,
            :format => {:with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i}

 # validates :pay_type, inclusion: PAYMENT_TYPES

  # for each item we transfer from the cart
  # we need to do two things
  # set the cart_id to nil, to prevent the line item from being destroyed
  # when the cart is destroyed
  # add the item itself to the line_item collection for the order
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

end
