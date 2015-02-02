class AddCarPrevImage < ActiveRecord::Migration
  def change
    add_attachment :cars, :prev_image
  end
end
