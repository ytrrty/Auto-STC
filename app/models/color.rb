class Color < ActiveRecord::Base
  belongs_to :configuration

  validates_presence_of :name, :hex, :configuration_id
end
