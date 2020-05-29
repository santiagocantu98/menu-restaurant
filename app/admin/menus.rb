ActiveAdmin.register Menu do
  permit_params :title, :description,  :menu_color, :text_color, :rating_color, :admin_user_id

  form do |f|
    f.inputs do
      f.input :admin_user , input_html: { style: 'pointer-events: none; background-color:#E9ECEF;' } , :collection => AdminUser.all, :selected => current_admin_user.id
      f.input :title
      f.input :description
      f.input :menu_color
      f.input :text_color
      f.input :rating_color
    end
    f.actions
  end




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
