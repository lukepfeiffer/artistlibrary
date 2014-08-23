class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :images, :category, :category_name
  end
end
