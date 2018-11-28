class ContactMailer < ApplicationMailer

  def info_order(admin_email, order)
    @order = order
    mail(to: admin_email, subject:'une commande a été passée!')
  end

  def order_confirmation(order)
    @order = order
    mail(to: @order.user.email, subject:"Confirmation de votre commande n° #{@order.id}" )
  end

end