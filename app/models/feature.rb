class Feature < ActiveRecord::Base
  has_many :features_configuration
  has_many :configurations, through: :features_configuration

  enum type: [:security, :technology, :mechanics, :dynamic, :body]

  validates_presence_of :name
  validates :type, presence: true, inclusion: { in: Configuration.types.keys, message: "%{value} is not a valid type" }
end
