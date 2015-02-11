class DealersController < ApplicationController

  before_action :set_dealer, only: [:show, :mail]

  def index
    @dealers = Dealer.all
  end

  def show

  end

  def mail
    @param = params.require(:mail)
    respond_to do |format|
      if !(@param[:email].blank? ||  @param[:subject].blank? || @param[:name].blank? || @param[:phone].blank? || @param[:message].blank? )
        DealersMailer.contact_mail(@dealer, @param).deliver_now
        format.json { render json: { status: :true, message: 'Повідомлення успішно відпраавлено' } }
      else
        format.json { render json: { status: :false, message: 'Заповніть всі поля' }  }
      end
    end
  end

  private
    def set_dealer
      @dealer = Dealer.find(params[:id])
    end

    def dealer_params
      params.require(:dealer).permit()
    end

end
