class SectionSerializer < ActiveModel::Serializer
  attributes :title, :description, :image_url, :menu_id, :pagina

  belongs_to :menu
  has_many :products
end
