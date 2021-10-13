class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :chatroom_name, references: :books, null: false
      t.timestamps
    end
    rename_column :messages, :chatroom_name_id, :chatroom_name
    change_column :messages, :chatroom_name, :string
    add_foreign_key :messages, :chatrooms, column: 'chatroom_name', primary_key: 'name'
  end
end
