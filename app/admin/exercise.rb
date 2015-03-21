ActiveAdmin.register Exercise do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


  permit_params :list, :of, :attributes, :on, :model, :name, :description, :level, :main_muscle, :other_muscles, :equipment, :e_type, :mechanics, :e_image

  index do
    selectable_column
    id_column
    column :name
    column :created_at
    column :updated_at
    actions
  end

  filter :name
  filter :level
  filter :main_muscle
  filter :other_muscles
  filter :equipment
  filter :e_type
  filter :mechanics

  form :html => {:enctype => "multipart/form-data"} do |f|
    f.inputs "Exercise Details" do
      f.input :name
      f.input :description
      f.input :level
      f.input :main_muscle
      f.input :other_muscles
      f.input :equipment
      f.input :e_type
      f.input :mechanics
      f.input :e_image, :as => :file, :required => false, :hint => f.template.image_tag(f.object.e_image.url(:medium))
    end
    f.actions
  end

  show do |exercise|
    attributes_table do
      row :name
      row :description
      row :level
      row :main_muscle
      row :other_muscles
      row :equipment
      row :e_type
      row :mechanics
      row :image do
        image_tag(exercise.e_image.url(:thumb))
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end



end
