class FeatureConfiguration < ActiveRecord::Base
  belongs_to :configuration
  belongs_to :feature
  
end
