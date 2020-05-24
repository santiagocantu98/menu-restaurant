class MenuSerializer < ActiveModel::Serializer
  attributes :title, :description, :admin_user_id

  belongs_to :admin_user
  has_many :sections
end
