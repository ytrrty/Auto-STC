class DealersMailer < ApplicationMailer
  default from: 'AutoSTC'

  def contact_mail( dealer, message )
    @dealer = dealer
    @message = message

    mail(to: @dealer.mail, subject: 'Нове повідомлення з сайту')
  end
end
