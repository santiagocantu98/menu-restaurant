ActiveAdmin.register Waiter do
  permit_params :menu_id, :name, :image_url, :role

  form do |f|
    f.inputs do
      f.input :menu, collection: current_admin_user.menus, :allow_blank => false
      f.input :name
      f.input :image_url
      f.input :role
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :last_name, :image_url, :menu_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :last_name, :image_url, :menu_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
