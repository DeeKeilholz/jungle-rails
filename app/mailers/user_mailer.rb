class UserMailer < ApplicationMailer

  def confirmation_email(order)
   @order = order
   @line_items  = @order.line_items


   mail(to: '@order.email', subject: "Order: #{order.id} || We received your order. Thank you!")
 end

end
