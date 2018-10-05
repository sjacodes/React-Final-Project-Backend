class AddPositionsToCaption < ActiveRecord::Migration[5.2]
  def change
    add_column :captions, :x_position, :integer
    add_column :captions, :y_position, :integer
  end
end
