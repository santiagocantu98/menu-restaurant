class ProductSerializer < ActiveModel::Serializer
  attributes :name, :description, :price, :rating, :image_url, :video_url, :section_id, :posicion

  belongs_to :section


end
