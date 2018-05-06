# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
  {nickname: "Chat Robot"},
  {nickname: "Jill"},
  {nickname: "John"},
  {nickname: "Joey"}
])

messages = Message.create([
  {user_id: 1, conversation_id: 1, body: "Welcome to a new chat!"},
  {user_id: 4, conversation_id: 1, body: "Hi, Jill! How's it going?"},
  {user_id: 2, conversation_id: 1, body: "Hey! It's going well!"}
])
