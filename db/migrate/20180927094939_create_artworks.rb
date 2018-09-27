class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :artist
      t.string :collection
      t.string :image

      t.timestamps
    end
  end
end
