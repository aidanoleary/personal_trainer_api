json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :name, :description, :level, :main_muscle, :other_muscles, :equipment, :e_type, :mechanics, :e_image
  json.url exercise_url(exercise, format: :json)
end
