class ChangeColumn < ActiveRecord::Migration
  def change
  	rename_column :liens, :test_lien, :title
  end
end
