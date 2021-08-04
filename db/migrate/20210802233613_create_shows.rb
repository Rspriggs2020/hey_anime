class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :genre
      t.string :description
      t.integer :seasons
      t.integer :rating
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
