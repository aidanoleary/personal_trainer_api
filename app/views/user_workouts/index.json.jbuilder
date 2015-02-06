json.array!(@user_workouts) do |user_workout|
  json.extract! user_workout, :id, :user_id, :workout_id, :workout_date, :time_taken
  json.url user_workout_url(user_workout, format: :json)
end
