class Message < ApplicationRecord
  validates :body, :user_id, :conversation_id, :presence => true
  after_commit :trigger_subscription

  def trigger_subscription
    ActionCable.server.broadcast 'GraphqlChannel', result: {
      data: {
        message: self,
        user: self.user,
        __typename: "Message"
      }
    }
  end

  belongs_to :user
  # belongs_to :conversation
end
