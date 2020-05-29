class MediaFileSerializer < ActiveModel::Serializer
  attributes :id, :type_media, :url, :product_id, :position

  belongs_to :product
end
