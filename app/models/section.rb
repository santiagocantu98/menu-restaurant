class Section < ApplicationRecord
  belongs_to :menu
  has_many :products

  validates_presence_of :title, :description, :menu_id, :page_number
end
