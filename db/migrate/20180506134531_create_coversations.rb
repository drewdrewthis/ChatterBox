class CreateCoversations < ActiveRecord::Migration[5.1]
  def change
    create_table :coversations do |t|
      t.integer :user_id
      t.integer :chat_id

      t.timestamps
    end
  end
end
