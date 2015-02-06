class WorkoutExercisesController < InheritedResources::Base

  private

    def workout_exercise_params
      params.require(:workout_exercise).permit(:workout_id, :exercise_id)
    end
end

