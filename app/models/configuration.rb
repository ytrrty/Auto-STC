class Configuration < ActiveRecord::Base
  has_many :colors, dependent: :delete_all
  has_many :dealer_cars, dependent: :delete_all

  has_many :feature_configurations
  has_many :features, through: :feature_configurations

  belongs_to :car

  enum fuel: [:petrol, :diesel, :gas, :hybrid]
  enum gear: [:front, :back, :full]
  enum body: [:sedan, :universal, :hatchback, :coupe, :limousine, :minibus, :cabriolet, :van, :pickup, :crossover]
  enum kpp: [:mechanical, :automatic, :robotised, :variator, :tiptronic]

end
