class Resolvers::CreateUser < GraphQL::Function
  # arguments passed as "args"
  argument :nickname, !types.String

  # return type from the mutation
  type Types::UserType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
    User.create!(
      nickname: args[:nickname]
    )
  end
end
