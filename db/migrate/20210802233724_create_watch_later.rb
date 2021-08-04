class CreateWatchLater < ActiveRecord::Migration[6.1]
  def change
    create_table :watch_laters do |t|
      t.integer :user_id
      t.integer :show_id

      t.timestamps null: false
    end
  end
end
