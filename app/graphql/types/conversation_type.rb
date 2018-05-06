Types::ConversationType = GraphQL::ObjectType.define do
  name 'Conversation'

  # it has the following fields
  field :id, !types.ID
  field :user_id, !types.ID
  field :conversation_id, !types.ID
  field :body, !types.String
end
