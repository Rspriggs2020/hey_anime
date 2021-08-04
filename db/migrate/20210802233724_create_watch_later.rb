class CreateWatchLater < ActiveRecord::Migration[6.1]
  def change
    create_table :watch_laters do |t|
      t.string :title

      t.timestamps
    end
  end
end
