json.array!(@workout_exercises) do |workout_exercise|
  json.extract! workout_exercise, :id, :workout_id, :exercise_id
  json.url workout_exercise_url(workout_exercise, format: :json)
end
