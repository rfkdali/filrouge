class ChangeTypeTag < ActiveRecord::Migration
  def change
  	add_column :articles, :tags, :string, array: true, default: []
  	remove_column :articles, :tag
  end
end
