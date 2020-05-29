class MediaFile < ApplicationRecord
	belongs_to :product

	validates_presence_of :type_media, :url, :product_id, :position
end
