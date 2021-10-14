class ChatroomsController < ApplicationController
  def show
    if Chatroom.where(name: params[:name]).any?
      @chatroom = Chatroom.find(params[:name])
      @message = Message.new
    else
      @chatroom = Chatroom.create({ name: params[:name], chat_id: set_id })
      @message = Message.new
      @chatroom.save
    end
    @chatroom
  end

  def set_id
    if Chatroom.count.zero?
      id = 1
    else
      id = Chatroom.maximum(:chat_id) + 1
    end
    id
  end
end
