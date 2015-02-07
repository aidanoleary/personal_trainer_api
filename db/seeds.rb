# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'json'

# Create initial admin user
AdminUser.destroy_all
AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password")

print "Admin users have been created."

# Loop over exercise json file and add Exercises
Exercise.destroy_all
Exercise.create!(name: "test_exercise", description: "this is a description", level: "beginner", main_muscle: "chest", other_muscles: "shoulders", equipment: "barbell", e_type: "strength", mechanics: "compound", image_url: "www.fakeimage.com/image.jpg")

#file = File.read('/Users/aidanoleary/RubymineProjects/personal_trainer_api/exercise_data.json')
file = File.read('exercise_data.json')
data_hash = JSON.parse(file)
#print(data_hash['data'].each { |item| item.["level"]join(",") })
data_hash['data'].each do |item|

  #Exercise.create!(name: item["name"].join(","), description: item["description"].join(","), level: item["level"].join(","), main_muscle: item["main_muscle"].join(","), other_muscles: item[other_muscles].join(","), equipment: item[equipment].join, e_type: item[type].join, mechanics: item[mechanics].join)
  e = Exercise.new
  if item.has_key? "name"
    e.name = item["name"].join(",")
  end
  if item.has_key? "description"
    e.description = item["description"].join(",")
  end
  if item.has_key? "level"
    e.level = item["level"].join(",")
  end
  if item.has_key? "main_muscle"
    e.main_muscle = item["main_muscle"].join(",")
  end
  if item.has_key? "other_muscles"
    e.other_muscles = item["other_muscles"].join(",")
  end
  if item.has_key? "equipment"
    e.equipment = item["equipment"].join(",")
  end
  if item.has_key? "type"
    e.e_type = item["type"].join(",")
  end
  if item.has_key? "mechanics"
    e.mechanics = item["mechanics"].join(",")
  end
  e.save
end
print "Exercises have been added from the file"
#print data_hash
