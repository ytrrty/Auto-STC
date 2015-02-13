class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :car, index: true, null: false
      t.has_attached_file :file, null: false
      t.string :name, null: false
      t.timestamps null: false
    end

    add_foreign_key :photos, :cars
  end
end
