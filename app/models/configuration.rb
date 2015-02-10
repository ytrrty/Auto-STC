class Configuration < ActiveRecord::Base
  has_many :colors, dependent: :delete_all
  
  has_many :dealer_cars, dependent: :delete_all
  has_many :dealers, through: :dealer_cars

  has_many :feature_configurations
  has_many :features, through: :feature_configurations

  belongs_to :car

  enum fuel: [:petrol, :diesel, :gas, :hybrid]
  enum gear: [:front, :back, :full]
  enum body: [:sedan, :universal, :hatchback, :coupe, :limousine, :minibus, :cabriolet, :van, :pickup, :crossover]
  enum kpp: [:mechanical, :automatic, :robotised, :variator, :tiptronic]

  validates_presence_of :name, :price, :mas, :width, :height, :length, :wheelbase, :volume_engine, :count_p, :speed_100, :max_speed, :consumption_city, :consumption_suburb, :consumption_combo, :car_id
  validates :fuel, presence: true, inclusion: { in: Configuration.fuels.keys, message: "%{value} is not a valid fuel" }
  validates :gear, presence: true, inclusion: { in: Configuration.gears.keys, message: "%{value} is not a valid gear" }
  validates :body, presence: true, inclusion: { in: Configuration.bodies.keys, message: "%{value} is not a valid body" }
  validates :kpp, presence: true, inclusion: { in: Configuration.kpps.keys, message: "%{value} is not a valid kpp" }
end
