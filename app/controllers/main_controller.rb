class MainController < ApplicationController

  def index
    @cars = Car.all
  end
end
