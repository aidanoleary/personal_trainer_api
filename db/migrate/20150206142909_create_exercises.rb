class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.string :level
      t.string :main_muscle
      t.string :other_muscles
      t.string :equipment
      t.string :e_type
      t.string :mechanics
      t.string :image_url

      t.timestamps null: false
    end
  end
end
