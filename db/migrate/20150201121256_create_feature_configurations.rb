class CreateFeatureConfigurations < ActiveRecord::Migration
  def change
    create_table :feature_configurations do |t|
      t.references :feature, index: true, null: false
      t.references :configuration, index: true, null: false
      t.boolean :status, default: false
      t.timestamps null: false, null: false
    end
  end
end
