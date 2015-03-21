class Exercise < ActiveRecord::Base
  has_many :user_workout_exercises
  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises

  # Paperclip image attachment
  has_attached_file :e_image, :styles => {:medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"
  #validates_attachment_content_type :e_image, :content_type => /\Aimage\/.*\/z/
  validates_attachment :e_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

end
