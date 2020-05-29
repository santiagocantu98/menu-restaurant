ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do

    columns do
        column do

            panel "Employee clasifications" do
                column_chart Calification.joins("INNER JOIN menus ON menus.id = califications.menu_id INNER JOIN waiters ON waiters.id = califications.waiter_id INNER JOIN Admin_users ON Admin_Users.id = menus.admin_user_id WHERE admin_users.id = #{current_admin_user.id}").group(:name).average(:rating), messages: {empty: "No data"}, xtitle: "Employee name", ytitle: "Average grade", max: "5", min: "0", width: "700px"
              end
        end
        column do
            panel "Service clasifications" do
                pie_chart Calification.group(:rating).order('rating ASC').count(:rating), xtitle: "Grade", ytitle: "Clients", messages: {empty: "No data"}, donut: true 
            end
        end
    end

    columns do
        column do
            panel "Client suggestions by Menu" do
                column_chart Suggestion.joins("INNER JOIN menus ON menus.id = suggestions.menu_id INNER JOIN Admin_users ON Admin_Users.id = menus.admin_user_id WHERE admin_users.id = #{current_admin_user.id}").group(:title).count(:menu_id), messages: {empty: "No data"}, xtitle: "Menu id", ytitle: "Client's suggestions", width: "700px", colors: ["#b00"]
            end
        end
    end
  end
end # content

