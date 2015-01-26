class AddDescriptionLink < ActiveRecord::Migration
  def change
  	add_column :liens, :lien, :string
  end
end
