class RemoveColumns < ActiveRecord::Migration
  def change
    drop_table :categories
    remove_column :images, :category_id
  end
end
