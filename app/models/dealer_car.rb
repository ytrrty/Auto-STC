class DealerCar < ActiveRecord::Base
  belongs_to :dealer
  belongs_to :configuration
  
end
