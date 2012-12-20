class OrderDetails < ActionMailer::Base
  # based on the method used to build a user email
  # on Ruby on rails guides

  # set the default values for emails, can be overridden on a per email basis
  default :from => "gloss.gertom@gmail.com"


  def received(order)
    @order = order
    # create the email message to and subject headers
    mail(:to => order.email, :subject => "Gloss order confirmation")
  end

  def shipped (order)
    @order = order
    # create the email message to and subject headers
    mail(:to => order.email, :subject => "Gloss order shipped")
  end
end
