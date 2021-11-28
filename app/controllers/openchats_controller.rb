class OpenchatsController < ApplicationController
  def index
    @messages = Message.all
    @message = current_user.message.new
  end
  
  
end
