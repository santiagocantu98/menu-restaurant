class Menu < ApplicationRecord
  belongs_to :admin_user
  has_many :sections
end
