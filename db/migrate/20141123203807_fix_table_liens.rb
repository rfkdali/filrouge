class FixTableLiens < ActiveRecord::Migration
  def self.up
  end

  def self.down
    drop_table :liens
  end
end