class ChatroomsController < ApplicationController
  def show
    if Chatroom.where(name: params[:name]).any?
      @chatroom = Chatroom.where(name: params[:name])[0]
    else
      @chatroom = Chatroom.new(name: params[:name])
      @chatroom.save
    end
  end
end
