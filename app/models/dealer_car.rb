class DealerCar < ActiveRecord::Base
  belongs_to :dealer
  belongs_to :configuration

  validates_presence_of :count, :dealer_id, :configuration_id
end
