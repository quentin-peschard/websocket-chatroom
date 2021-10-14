class ChatroomsController < ApplicationController
  def show
    if Chatroom.where(name: params[:name]).any?
      @chatroom = Chatroom.find(params[:name])
    else
      @chatroom = Chatroom.create(name: params[:name])
      @chatroom.save
    end
    @chatroom
  end
end
