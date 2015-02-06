class AddWeightToUserWorkoutExercise < ActiveRecord::Migration
  def change
    add_column :user_workout_exercises, :weight, :decimal
  end
end
