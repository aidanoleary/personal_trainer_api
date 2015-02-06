# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create initial admin user
AdminUser.destroy_all
AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password")

# Loop over exercise json file and add Exercises
Exercise.destroy_all
Exercise.create!(name: "test_exercise", description: "this is a description", level: "beginner", main_muscle: "chest", other_muscles: "shoulders", equipment: "barbell", e_type: "strength", mechanics: "compound", image_url: "www.fakeimage.com/image.jpg")
