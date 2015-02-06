class UserWorkoutsController < InheritedResources::Base

  private

    def user_workout_params
      params.require(:user_workout).permit(:user_id, :workout_id, :workout_date, :time_taken)
    end
end

