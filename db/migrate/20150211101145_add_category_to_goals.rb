class AddCategoryToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :category, :string
  end
end
