class Chatroom < ApplicationRecord
  set_primary_key :name
  has_many :messages
end
