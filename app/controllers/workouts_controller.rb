class WorkoutsController < InheritedResources::Base

  private

    def workout_params
      params.require(:workout).permit(:name, :description)
    end
end

