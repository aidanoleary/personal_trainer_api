json.array!(@user_workout_exercises) do |user_workout_exercise|
  json.extract! user_workout_exercise, :id, :user_workout_id, :exercise_id, :number_of_reps, :number_of_sets
  json.url user_workout_exercise_url(user_workout_exercise, format: :json)
end
