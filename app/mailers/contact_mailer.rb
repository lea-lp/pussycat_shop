class ContactMailer < ApplicationMailer

  def contact

    mail(to: 'xxx@gmail.com', subject:'sujet de test')
  end

  def order
    mail(to: 'xxx@gmail.com', subject:'sujet de payement')
  end


end
