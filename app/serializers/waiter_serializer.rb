class WaiterSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :menu_id, :role

  belongs_to :menu
  has_many :califications
end
