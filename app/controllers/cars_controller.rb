class CarsController < ApplicationController

  before_action :set_car, only: [:show]

  def show

  end

  private
  def set_car
    @car = Car.find(params[:id])
  end

end
