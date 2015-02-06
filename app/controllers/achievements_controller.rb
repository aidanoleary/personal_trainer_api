class AchievementsController < InheritedResources::Base

  private

    def achievement_params
      params.require(:achievement).permit(:name, :description, :image_url)
    end
end

