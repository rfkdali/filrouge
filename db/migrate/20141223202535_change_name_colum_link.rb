class ChangeNameColumLink < ActiveRecord::Migration
  def change
  	rename_column :liens, :lien, :link
  end
end
