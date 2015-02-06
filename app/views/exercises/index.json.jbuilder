json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :name, :description, :level, :main_muscle, :other_muscles, :equipment, :e_type, :mechanics, :image_url
  json.url exercise_url(exercise, format: :json)
end
