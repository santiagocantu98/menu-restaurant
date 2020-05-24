ActiveAdmin.register Section do
  permit_params :title, :description, :image_url, :menu_id, :pagina

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :menu_id, :image_url
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :menu_id, :image_url]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
