class CreateUserSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :user_selections do |t|
      t.belongs_to :gallery_wall
      t.belongs_to :artwork
      t.integer :x_position
      t.integer :y_position
      t.timestamps
    end
  end
end
