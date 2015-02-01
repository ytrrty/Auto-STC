class AddFereignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :configurations, :cars
    add_foreign_key :colors, :configurations
    add_foreign_key :dealer_cars, :dealers
    add_foreign_key :dealer_cars, :configurations
    add_foreign_key :feature_configurations, :features
    add_foreign_key :feature_configurations, :configurations
  end
end
