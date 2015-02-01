class Dealer < ActiveRecord::Base
  has_many :dealer_cars, dependent: :delete_all
  
end
