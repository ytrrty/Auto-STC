class Dealer < ActiveRecord::Base
  has_many :dealer_cars, dependent: :delete_all

  validates_presence_of :name, :mail, :phone, :address, :fax, :frame_src
end
