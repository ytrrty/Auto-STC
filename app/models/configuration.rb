class Configuration < ActiveRecord::Base

  enum fuel: [:petrol, :diesel, :gas, :hybrid]
  enum gear: [:front, :back, :full]
  enum body: [:sedan, :universal, :hatchback, :coupe, :limousine, :minibus, :cabriolet, :van, :pickup, :crossover]
  enum kpp: [:mechanical, :automatic, :robotised, :variator, :tiptronic]
  
end
