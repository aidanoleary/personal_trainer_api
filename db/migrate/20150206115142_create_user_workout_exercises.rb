class CreateUserWorkoutExercises < ActiveRecord::Migration
  def change
    create_table :user_workout_exercises do |t|
      t.integer :user_workout_id
      t.integer :exercise_id
      t.integer :number_of_reps
      t.integer :number_of_sets

      t.timestamps null: false
    end
  end
end
