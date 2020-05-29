class Suggestion < ApplicationRecord
  belongs_to :menu

  validates_presence_of :menu_id, :email, :comment

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

end
