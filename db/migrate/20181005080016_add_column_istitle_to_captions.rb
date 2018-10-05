class AddColumnIstitleToCaptions < ActiveRecord::Migration[5.2]
  def change
    add_column :captions, :title, :boolean
  end
end
