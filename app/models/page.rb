class Page < ApplicationRecord
  belongs_to :Menu
  has_many :products
end
