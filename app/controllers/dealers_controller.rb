class DealersController < ApplicationController

  before_action :set_dealer, only: [:show, :mail]

  def index
    @dealers = Dealer.all
  end

  def show

  end

  def mail

    if DealersMailer.contact_mail(@dealer, params.require(:mail)).deliver_now
      @message = "Ваше повідомлення успішно відправлено"
    else
      @message = "Помилка"
    end
    render :show
  end

  private
    def set_dealer
      @dealer = Dealer.find(params[:id])
    end

    def dealer_params
      params.require(:dealer).permit()
    end

end
