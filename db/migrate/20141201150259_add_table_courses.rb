class AddTableCourses < ActiveRecord::Migration
  def change
  	create_table :courses do |t|
  		t.string :title
  		t.string :category
  		t.text :content
  	end
  end
end
