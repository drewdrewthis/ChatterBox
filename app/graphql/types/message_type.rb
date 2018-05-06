Types::MessageType = GraphQL::ObjectType.define do
  name 'Message'

  # it has the following fields
  field :id, !types.ID
  field :user_id, !types.ID
  field :conversation_id, !types.ID
  field :body, !types.String

  field :user, Types::UserType do
    description "Messages user"
    resolve ->(obj, args, ctx) {
      obj.user
    }
  end
end
