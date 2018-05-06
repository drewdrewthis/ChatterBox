class Message < ApplicationRecord
validates :body, :user_id, :conversation_id, :presence => true

  belongs_to :user
  # belongs_to :conversation
end
