class Car < ActiveRecord::Base
  has_many :configurations, dependent: :delete_all

  validates_presence_of :name, :description, :year
end
