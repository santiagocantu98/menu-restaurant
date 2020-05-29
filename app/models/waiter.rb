class Waiter < ApplicationRecord
  belongs_to :menu

  has_many :califications
  validates_presence_of :name, :menu_id, :role
  validates :image_url, format: URI::regexp(%w[http https])


end
