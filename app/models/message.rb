class Message < ApplicationRecord
  belongs_to :chatroom, foreign_key: 'chatroom_name'
end
