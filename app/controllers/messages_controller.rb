class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_name])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    if @message.save
      redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
    else
      render 'chatrooms/show'
    end
  end
end