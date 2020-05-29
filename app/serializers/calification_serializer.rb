class CalificationSerializer < ActiveModel::Serializer
  attributes :menu_id, :waiter_id, :rating, :comment, :email, :ticket_id
  
  belongs_to :menu
  belongs_to :waiter
end
