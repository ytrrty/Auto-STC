class ModifiedDealersMap < ActiveRecord::Migration
  def change
    remove_column :dealers, :frame_src, :string
    add_column :dealers, :map_y, :float, default: false
    add_column :dealers, :map_x, :float, default: false
  end
end
