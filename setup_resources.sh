# ===========================================================
# A shell script for generating all the scaffolds required
# for the personal trainer api
# ===========================================================

# User

# User_Stats
rails generate scaffold UserStat points:integer total_reps:integer total_weight:decimal total_cardio:decimal total_distance:decimal;

# User_Achievement
rails generate scaffold UserAchievement user_id:integer achievement_id:integer;

# Achievement
rails generate scaffold Achievement name:string description:text image_url:string;

# User_workout
rails generate scaffold UserWorkout user_id:integer workout_id:integer workout_date:date time_taken:time;

# Workout
rails generate scaffold Workout name:string description:text;

# Workout_exercise
rails generate scaffold WorkoutExercise workout_id:integer exercise_id:integer;

# Exercise
rails generate scaffold Exercise name:string description:text muscle:string type:string image_url:string;

#User_Workout_Exercise
rails generate scaffold UserWorkoutExercise user_workout_id:integer exercise_id:integer number_of_reps:integer;

echo "Finished script";
