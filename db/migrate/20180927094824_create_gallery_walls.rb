class CreateGalleryWalls < ActiveRecord::Migration[5.2]
  def change
    create_table :gallery_walls do |t|
      t.belongs_to :user
      t.timestamps
    end
  end
end
