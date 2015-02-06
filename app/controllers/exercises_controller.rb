class ExercisesController < InheritedResources::Base
  respond_to :json

  private

    def exercise_params
      params.require(:exercise).permit(:name, :description, :level, :main_muscle, :other_muscles, :equipment, :e_type, :mechanics, :image_url)
    end
end

