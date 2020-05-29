class Calification < ApplicationRecord
  belongs_to :menu
  belongs_to :waiter

  validates_presence_of :menu_id, :waiter_id, :rating, :comment, :email, :ticket_id

  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
