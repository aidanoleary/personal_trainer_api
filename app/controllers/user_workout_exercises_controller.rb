class UserWorkoutExercisesController < InheritedResources::Base

  private

    def user_workout_exercise_params
      params.require(:user_workout_exercise).permit(:user_workout_id, :exercise_id, :number_of_reps, :number_of_sets)
    end
end

