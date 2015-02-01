class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.references :configuration, index: true, null: false
      t.string :name, null: false
      t.string :hex, null: false

      t.timestamps null: false
    end
  end
end
