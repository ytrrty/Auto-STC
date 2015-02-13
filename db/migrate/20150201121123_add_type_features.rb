class AddTypeFeatures < ActiveRecord::Migration
  def change
    add_column :features, :typec, :integer, null: false
  end
end
