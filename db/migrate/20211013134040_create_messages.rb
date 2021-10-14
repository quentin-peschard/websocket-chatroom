class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.timestamps
    end
    add_reference :messages, :chatroom, index: true
    rename_column :messages, :chatroom_id, :chatroom_name
    change_column :messages, :chatroom_name, :string
  end
end
