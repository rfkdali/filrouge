class ChangeTypeColumLink < ActiveRecord::Migration
  def change
  	change_column :liens, :link, :text
  end
end