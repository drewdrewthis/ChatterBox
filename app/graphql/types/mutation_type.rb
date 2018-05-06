Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createMessage, function: Resolvers::CreateMessage.new
end
