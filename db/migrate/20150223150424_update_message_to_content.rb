class UpdateMessageToContent < ActiveRecord::Migration
  def change
  	change_table :articles do |t|
  		t.rename :message, :content
  	end
  end
end
