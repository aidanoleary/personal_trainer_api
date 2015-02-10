ActiveAdmin.register Workout do


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


  permit_params :list, :of, :attributes, :on, :model, :name, :description

  index do
    selectable_column
    id_column
    column :name
    column :created_at
    column :updated_at
    actions
  end

  filter :name

  form do |f|
    f.inputs "Workout Details" do
      f.input :name
      f.input :description
      f.has_many :exercises, heading: 'Exercises', allow_destroy: true, new_record: false do |fa|
        fa.input :name
      end
    end


    f.actions
  end

  show do
    panel "Workout Information" do

      #attributes_table do
      #  row :name
      #  row :description
      #end
      table_for workout do
        column "Workout Name", :name
        column :description
      end
      table_for workout.exercises do
        column "Exercises", :name

      end
    end
    active_admin_comments
  end



end
