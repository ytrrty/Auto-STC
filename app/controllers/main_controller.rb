class MainController < ApplicationController

  def index
    @cars = Car.order('year DESC').all
  end
end
