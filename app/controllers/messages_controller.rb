class MessagesController < ApplicationController
  def create
    @message = current_user.message.new(message_params)
    
  end
  
  private
  def message_params
    params.require(:message).permit(:body)
  end
end
