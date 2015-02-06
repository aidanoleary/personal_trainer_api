class UserStatsController < InheritedResources::Base

  private

    def user_stat_params
      params.require(:user_stat).permit(:points, :total_reps, :total_weight, :total_cardio, :total_distance)
    end
end

