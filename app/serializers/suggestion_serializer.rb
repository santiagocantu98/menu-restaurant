class SuggestionSerializer < ActiveModel::Serializer
  attributes :menu_id, :comment, :email
  belongs_to :menu
end
