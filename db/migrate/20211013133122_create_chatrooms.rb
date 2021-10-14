class CreateChatrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :chatrooms, { id: false, primary_key: :name } do |t|
      t.primary_key :name, :string
      t.timestamps
    end
  end
end
