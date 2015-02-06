class ExercisesController < InheritedResources::Base

  private

    def exercise_params
      params.require(:exercise).permit(:name, :description, :level, :main_muscle, :other_muscles, :equipment, :type, :mechanics, :image_url)
    end
end

