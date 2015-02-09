class DropLiens < ActiveRecord::Migration
  def change
  	drop_table :liens
  	drop_table :courses
 	drop_table :users
  end
end
