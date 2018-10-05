class AddPositionsToTitle < ActiveRecord::Migration[5.2]
  def change
    add_column :titles, :x_position, :integer
    add_column :titles, :y_position, :integer
  end
end
