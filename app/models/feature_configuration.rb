class FeatureConfiguration < ActiveRecord::Base
  belongs_to :configuration
  belongs_to :feature

  validates_presence_of :status, :feature_id, :configuration_id
end
