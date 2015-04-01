# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'json'

# Create initial admin users
# ===============
AdminUser.destroy_all
AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password")

print "Admin users have been created.\n"

# Create initial test user
# ===============
User.destroy_all
User.create!(email: "user@example.com", password: "password")

print "Test users have been created.\n"

# Add initial exercises from exercise_data.json file
# ===============
Exercise.destroy_all
Exercise.create!(name: "test_exercise", description: "this is a description", level: "beginner", main_muscle: "chest", other_muscles: "shoulders", equipment: "barbell", e_type: "strength", mechanics: "compound")

file = File.read('exercise_data.json')
data_hash = JSON.parse(file)

# Make the entries unique by their name and get rid of duplicate entries from the file.
data_hash['data'].uniq! { |item| item["name"] }

# Add each exercise to the database
data_hash['data'].each do |item|
  e = Exercise.new
  if item.has_key? "name"
    e.name = item["name"].join(",").downcase
  end
  if item.has_key? "description"
    e.description = item["description"].join(",")
  end
  if item.has_key? "level"
    e.level = item["level"].join(",").downcase
  end
  if item.has_key? "main_muscle"
    e.main_muscle = item["main_muscle"].join(",").downcase
  end
  if item.has_key? "other_muscles"
    e.other_muscles = item["other_muscles"].join(",").downcase
  end
  if item.has_key? "equipment"
    e.equipment = item["equipment"].join(",").downcase
  end
  if item.has_key? "type"
    e.e_type = item["type"].join(",").downcase
  end
  if item.has_key? "mechanics"
    e.mechanics = item["mechanics"].join(",").downcase
  end
  e.save
end

print "Exercises have been added from the file\n"
