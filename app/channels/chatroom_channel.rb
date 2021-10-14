class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_#{params[:name]}"
  end
end
