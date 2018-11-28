class ContactMailer < ApplicationMailer

  def info_order(order)
    @order = order
    mail(to: 'kasskq@gmail.com', subject:'une commande a été passée!')
    mail(to: 'clemoun@yahoo.fr', subject:'une commande a été passée!')
  end

  def order_confirmation(order)
    @order = order
    mail(to: @order.user.email, subject:'Confirmation de votre commande n° #{@order.id}')
  end


end
