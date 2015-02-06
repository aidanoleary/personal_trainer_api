class UserAchievementsController < InheritedResources::Base

  private

    def user_achievement_params
      params.require(:user_achievement).permit(:user_id, :achievement_id)
    end
end

