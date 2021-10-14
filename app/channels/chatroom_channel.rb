class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:name]).chat_id
    stream_for chatroom
  end
end
