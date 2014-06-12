class CreateDurations < ActiveRecord::Migration
  def change
    create_table :durations do |t|
      t.string :title
      t.integer :length
      t.decimal :rate
      t.float :discount

      t.timestamps
    end
  end
end
