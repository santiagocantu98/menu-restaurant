ActiveAdmin.register Product do
  permit_params :name, :description, :price, :rating, :section_id, :position


  form do |f|
    f.inputs do
      f.input :section, collection: Section.joins("INNER JOIN menus ON menus.id = sections.menu_id INNER JOIN Admin_users ON Admin_Users.id = menus.admin_user_id WHERE admin_users.id = #{current_admin_user.id}"), :allow_blank => false
      f.input :name
      f.input :description
      f.input :price, :input_html => { :min => 0 }
      f.input :rating, :input_html => { :min => 0, :max => 5 }
      f.input :position
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :description, :price, :rating, :image_url, :video_url, :section_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :price, :rating, :image_url, :video_url, :section_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
