class AddColumnToCaptions < ActiveRecord::Migration[5.2]
  def change
    add_column :captions, :rendered, :boolean
  end
end
