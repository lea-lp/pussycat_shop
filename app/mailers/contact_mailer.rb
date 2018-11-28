class ContactMailer < ApplicationMailer

  def info_order(order)
    @order = order
    mail(to: 'kasskq@gmail.com', subject:'sujet de test')
  end

  def order_confirmation()
    mail(to: 'kasskq@gmail.com', subject:'sujet de payement')
  end


end
