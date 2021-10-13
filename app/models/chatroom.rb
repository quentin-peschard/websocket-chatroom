class Chatroom < ApplicationRecord
  self.primary_key = 'name'
  has_many :messages, primary_key: 'name', foreign_key: 'chatroom_name'
end
