class Chatroom < ApplicationRecord
  self.primary_key = 'name'
  has_many :messages, foreign_key: 'chatroom_name', dependant: :destroy
end
