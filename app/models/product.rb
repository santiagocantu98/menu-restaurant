class Product < ApplicationRecord
  belongs_to :section

  has_many :media_files

  validates_presence_of :name, :description, :price, :rating, :section_id, :position

  validates :price, numericality: { greater_than_or_equal_to: 0 , less_than_or_equal_to: 100000}
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5} 
  validates :image_url, format: URI::regexp(%w[http https])


end
