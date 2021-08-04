class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating 
      t.string :comment
      t.integer :user_id
      t.integer :show_id

      t.timestamps null: false
    end
  end
end
