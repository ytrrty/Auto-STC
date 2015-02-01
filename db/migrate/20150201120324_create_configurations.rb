class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.references :car, index: true, null: false
      t.integer :price, null: false
      t.integer :mass, null: false
      t.integer :width, null: false
      t.integer :height, null: false
      t.integer :length, null: false
      t.integer :wheelbase, null: false
      t.integer :volume_engine, null: false
      t.integer :count_p, null: false
      t.float :speed_100, null: false
      t.integer :max_speed, null: false
      t.float :consumption_city, null: false
      t.float :consumption_suburb, null: false
      t.float :consumption_combo, null: false

      t.timestamps null: false
    end
  end
end
