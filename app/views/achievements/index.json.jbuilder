json.array!(@achievements) do |achievement|
  json.extract! achievement, :id, :name, :description, :image_url
  json.url achievement_url(achievement, format: :json)
end
