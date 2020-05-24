ActiveAdmin.register Menu do
  permit_params :title, :description, :admin_user_id

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :admin_user_id, :title, :description, :image_url
  #
  # or
  #
  # permit_params do
  #   permitted = [:admin_user_id, :title, :description, :image_url]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
