class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.maximum(:chat_id)
    stream_for chatroom
  end

  def receive(data)
    ActionCable.server.broadcast(chatroom, data)
  end
end
