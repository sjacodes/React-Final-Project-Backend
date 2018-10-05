class CreateTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :titles do |t|
      t.string :text
      t.belongs_to :gallery_wall
      t.timestamps
    end
  end
end
