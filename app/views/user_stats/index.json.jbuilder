json.array!(@user_stats) do |user_stat|
  json.extract! user_stat, :id, :points, :total_reps, :total_weight, :total_cardio, :total_distance
  json.url user_stat_url(user_stat, format: :json)
end
