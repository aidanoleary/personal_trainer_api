class AddAttachmentEImageToExercises < ActiveRecord::Migration
  def self.up
    change_table :exercises do |t|
      t.attachment :e_image
    end
  end

  def self.down
    remove_attachment :exercises, :e_image
  end
end
