class AddTableLiens < ActiveRecord::Migration
	def change
		create_table :liens do |t|
		t.text     "title"
	    t.datetime "created_at"
	    t.datetime "updated_at"
	    t.string   "description"
	    t.string   "author"
	    t.text     "link"
		end
	end
end