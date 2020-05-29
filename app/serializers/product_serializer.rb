class ProductSerializer < ActiveModel::Serializer
  attributes :name, :description, :price, :rating, :section_id, :position

  belongs_to :section
  has_many :media_files


end
