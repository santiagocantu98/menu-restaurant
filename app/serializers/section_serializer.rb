class SectionSerializer < ActiveModel::Serializer
  attributes :title, :description, :menu_id, :page_number

  belongs_to :menu
  has_many :products
end
