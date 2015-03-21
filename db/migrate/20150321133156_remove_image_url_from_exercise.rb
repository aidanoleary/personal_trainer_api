class RemoveImageUrlFromExercise < ActiveRecord::Migration
  def change
    remove_column :exercises, :image_url, :string
  end
end
