class Car < ActiveRecord::Base
  has_many :configurations, dependent: :delete_all
  
end
