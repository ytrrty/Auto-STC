class CreateDealerCars < ActiveRecord::Migration
  def change
    create_table :dealer_cars do |t|
      t.integer :count, null: false
      t.references :dealer, index: true, null: false
      t.references :configuration, index: true, null: false

      t.timestamps null: false
    end
  end
end
