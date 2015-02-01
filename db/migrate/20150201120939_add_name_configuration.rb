class AddNameConfiguration < ActiveRecord::Migration
  def change
    add_column :configurations, :name, :string, null: false
  end
end
