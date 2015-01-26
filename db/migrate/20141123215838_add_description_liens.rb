class AddDescriptionLiens < ActiveRecord::Migration
  def change
  	add_column :liens, :description, :string
  	add_column :liens, :author, :string
  end
end
