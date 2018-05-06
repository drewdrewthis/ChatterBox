Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :allUsers, !types[Types::UserType] do
    description "All the todos!"
    resolve ->(obj, args, ctx) {
      User.all
    }
  end

  field :allMessages, !types[Types::MessageType] do
    description "All the messages!"
    resolve ->(obj, args, ctx) {
      Message.all
    }
  end
end
