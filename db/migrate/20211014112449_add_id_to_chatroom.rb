class AddIdToChatroom < ActiveRecord::Migration[6.1]
  def change
    add_column :chatrooms, :chat_id, :integer
  end
end
