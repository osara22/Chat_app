class MessagesController < ApplicationController
  def create
    @message = Message.create(message_params.merge(user_id: current_user.id, room_id: params[:room_id]))
    # ActionCable.server.broadcast "room_channel_#{params[:room_id]}", message: @message
  end
  
  private
  def message_params
    params.require(:message).permit(:body)
  end
end
