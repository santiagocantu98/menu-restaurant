class MenuSerializer < ActiveModel::Serializer
  attributes :title, :description, :menu_color, :text_color, :rating_color, :admin_user_id

  belongs_to :admin_user
  has_many :sections
  has_many :waiters
  has_many :suggestions
  has_many :califications

end
