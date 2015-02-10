class Workout < ActiveRecord::Base
  has_many :user_workouts
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises
  accepts_nested_attributes_for :workout_exercises, allow_destroy: true
  accepts_nested_attributes_for :exercises
end
