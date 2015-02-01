class Feature < ActiveRecord::Base
  has_many :features_configuration
  has_many :configurations, through: :features_configuration

  enum type: [:security, :technology, :mechanics, :dynamic, :body]

end
