class CreateUserWorkouts < ActiveRecord::Migration
  def change
    create_table :user_workouts do |t|
      t.integer :user_id
      t.integer :workout_id
      t.date :workout_date
      t.time :time_taken

      t.timestamps null: false
    end
  end
end
