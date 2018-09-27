class AddDateToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :date, :string
  end
end
