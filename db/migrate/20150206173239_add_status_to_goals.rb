class AddStatusToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :status, :boolean
  end
end
