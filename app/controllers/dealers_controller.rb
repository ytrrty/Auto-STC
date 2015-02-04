class DealersController < ApplicationController

  before_action :set_dealer, only: [:show]

  def index
    @dealers = Dealer.all
  end

  def show

  end

  private
    def set_dealer
      @dealer = Dealer.find(params[:id])
    end

    def dealer_params
      params.require(:dealer).permit()
    end

end
