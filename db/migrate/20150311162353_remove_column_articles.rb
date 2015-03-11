class RemoveColumnArticles < ActiveRecord::Migration
  def change
  	remove_column :articles, :tags
  end
end
