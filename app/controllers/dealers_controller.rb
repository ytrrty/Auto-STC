class DealersController < ApplicationController

  def index
    @dealers = Dealer.all
  end
end
