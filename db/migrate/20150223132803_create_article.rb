class CreateArticle < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.time :date
      t.string :message
      t.string :tag
    end
  end
end
