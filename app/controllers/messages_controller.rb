class MessagesController < ApplicationController
  def create
    message = Message.new(message_params.merge(user_id: current_user.id, room_id: params[:room_id]))
    if message.save
      redirect_to room_path(message.room_id)
    else
      redirect_to root_path
    end
  end
  
  private
  def message_params
    params.require(:message).permit(:body)
  end
end
