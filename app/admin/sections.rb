ActiveAdmin.register Section do
  permit_params :title, :description, :menu_id, :page_number

  form do |f|
    f.inputs do
      f.input :menu, collection: current_admin_user.menus, :allow_blank => false
      f.input :title
      f.input :description
      f.input :page_number
    end
    f.actions
  end

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
