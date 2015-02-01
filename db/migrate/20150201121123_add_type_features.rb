class AddTypeFeatures < ActiveRecord::Migration
  def change
    add_column :features, :type, :integer, null: false
  end
end
