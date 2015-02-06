class CreateUserStats < ActiveRecord::Migration
  def change
    create_table :user_stats do |t|
      t.integer :points
      t.integer :total_reps
      t.decimal :total_weight
      t.decimal :total_cardio
      t.decimal :total_distance

      t.timestamps null: false
    end
  end
end
