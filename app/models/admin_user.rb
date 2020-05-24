class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable, :registerable
  has_many :menus, dependent: :destroy

  before_save :set_default_role

  def admin?
  	self.role == "admin"
  end

  def owner?
  	self.role == "owner"
  end


  def set_default_role
  	self.role = "owner" if role.nil?
  end

end
