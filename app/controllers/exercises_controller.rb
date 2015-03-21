class ExercisesController < InheritedResources::Base
  respond_to :json

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.e_image = nil
    @exercise.e_image.save
    @exercise.destroy
  end

  private

    def exercise_params
      params.require(:exercise).permit(:name, :description, :level, :main_muscle, :other_muscles, :equipment, :e_type, :mechanics)
    end
end

