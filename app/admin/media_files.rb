ActiveAdmin.register MediaFile do
  permit_params :type_media, :url, :product_id, :position

  form do |f|
    f.inputs do
      f.input :product, collection: Product.joins("INNER JOIN sections ON sections.id = products.section_id INNER JOIN menus ON menus.id = sections.menu_id INNER JOIN Admin_users ON Admin_Users.id = menus.admin_user_id WHERE admin_users.id = #{current_admin_user.id}"), :allow_blank => false
      f.input :type_media, collection: [['Video',:video],['Image',:image]]
      f.input :url
      f.input :position
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :type, :url, :product_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:type, :url, :product_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
