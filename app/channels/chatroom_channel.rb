class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_#{params[:name]}"
  end

  def receive(data)
    ActionCable.server.broadcast("chat_#{params[:name]}", data)
  end
end
