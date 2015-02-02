class MainController < ApplicationController
  before_action :set_car, only: [:loadImgCar]

  def index
    @cars = Car.order('year DESC').all
  end

  def load
    @car = Car.new
  end

  def loadImgCar
    if @car.update(car_params)
      redirect_to :action => "index"
    else
      @message = "Error"
    end
  end

  private
    def set_car
      @car = Car.find(params[:id])
    end

    def car_params
      params.require(:car).permit(:prev_image)
    end
end
