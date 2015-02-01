class AddParamsConfiguration < ActiveRecord::Migration
  def change
    add_column :configurations, :fuel, :integer, null: false
    add_column :configurations, :gear, :integer, null: false
    add_column :configurations, :body, :integer, null: false
    add_column :configurations, :kpp, :integer, null: false
  end
end
