class AddColumnsWidthHeightToUserSelections < ActiveRecord::Migration[5.2]
  def change
    add_column :user_selections, :width, :integer
    add_column :user_selections, :height, :integer
    add_column :titles, :width, :integer
    add_column :titles, :height, :integer
    add_column :captions, :width, :integer
    add_column :captions, :height, :integer
  end
end
