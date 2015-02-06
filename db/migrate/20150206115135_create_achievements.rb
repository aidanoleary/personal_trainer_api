class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :name
      t.text :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end