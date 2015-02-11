class Feature < ActiveRecord::Base
  has_many :features_configuration
  has_many :configurations, through: :features_configuration

  enum type: [:security, :technology]

  validates_presence_of :name
  validates :typec, presence: true, inclusion: { in: Feature.types.keys, message: "%{value} is not a valid type" }
end
