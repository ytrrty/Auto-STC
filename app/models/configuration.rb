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

  def getFuelName
    case self.fuel
      when 'petrol'
        'Бензин'
      when 'diesel'
        'Дизель'
      when 'gas'
        'Газ'
      when 'hybrid'
        'Гибрид'
      else
        'Невідомо'
    end
  end

  def getBodyName
    case self.body
      when 'sedan'
        'Седан'
      when 'universal'
        'Універсал'
      when 'hatchback'
        'Хетчбек'
      when 'coupe'
        'Купе'
      when 'limousine'
        'Лимузин'
      when 'minibus'
        'Міні-бус'
      when 'cabriolet'
        'Кабріолет'
      when 'van'
        'Вантажна'
      when 'pickup'
        'Пікап'
      when 'crossover'
        'Кроссовер'
      else
        'Невідомо'
    end
  end

  def getGearName
    case self.gear
      when 'front'
        'Передній'
      when 'back'
        'Задній'
      when 'full'
        'Повний'
      else
        'Невідомо'
    end
  end

  def getKPPName
    case self.kpp
      when 'mechanical'
         'Механічна'
      when 'automatic'
         'Автоматична'
      when 'robotised'
        'Роботизована'
      when 'variator'
        'Варіатор'
      when 'tiptronic'
        'Тріптонік'
      else
         'Невідома'
    end
  end

  def getFormatVolumeEngine
    '%.1f' % (self.volume_engine/1000.0)
  end

end
