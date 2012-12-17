class CustomerMailer < ActionMailer::Base
  # based on the method used to build a user email
  # on Ruby on rails guides

  # set the default values for emails, can be overridden on a per email basis
  default :from => "gloss.gertom@gmail.com"

  def welcome_email(customer)
    @customer = customer
    @url = "http://localhost:3000"
    # create the email message to and subject headers
    mail(:to => customer.email, :subject => "Welcome to Gloss")
  end
end
