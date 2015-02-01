class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.string :name, null: false
      t.string :mail, null: false
      t.string :phone, null: false
      t.string :address, null: false
      t.string :fax
      t.string :frame_src, null: false

      t.timestamps null: false
    end
  end
end
