class RoomsController < ApplicationController
  def new
    @room = Room.new
  end
  
  def index
    @rooms = Room.all
  end
  
  def show
    @room = Room.find(params[:id])
    @message = Message.new
    @messages = @room.messages.includes(:user)
  end
  
  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_path(@room)
    else
      render :new
    end
  end
  
  def destroy
    
  end
  
  private
  def room_params
    params.require(:room).permit(:name, :join_password, :delete_password)
  end
end
