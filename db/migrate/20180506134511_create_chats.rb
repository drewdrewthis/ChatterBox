class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.integer :conversation_id

      t.timestamps
    end
  end
end
