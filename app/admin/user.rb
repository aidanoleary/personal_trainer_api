# file: app/admin/user.rb
ActiveAdmin.register User do

  permit_params :list, :of, :attributes, :on, :model, :email, :password
  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    actions
  end

  filter :email

  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :password
    end
    f.actions
  end

  show do
    attributes_table do
      row :email
      row :authentication_token
      row :confirmed_at
      row :current_sign_in_at
      row :last_sign_in_at
      row :sign_in_count
    end
    active_admin_comments
  end
end