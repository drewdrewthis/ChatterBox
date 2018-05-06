class Resolvers::CreateMessage < GraphQL::Function
  # arguments passed as "args"
  argument :user_id, !types.ID
  argument :conversation_id, !types.ID
  argument :body, !types.String

  # return type from the mutation
  type Types::MessageType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
    Message.create!(
      user_id: args[:user_id],
      conversation_id: args[:conversation_id],
      body: args[:body],
    )
  end
end
