class RoomsController < ApplicationController
  before_action :password_check, only: [:show]
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
      session[:private_room] = @room.id if @room.join_password.present?
      redirect_to room_path(@room)
    else
      render :new
    end
  end
  
  def destroy
    room = Room.find(params[:id])
    if room.delete_password == delete_params[:password]
      room.destroy
      redirect_to root_path
    else
      @room = Room.find(params[:id])
      render :show
    end
  end
  
  private
  def room_params
    params.require(:room).permit(:name, :join_password, :delete_password)
  end
  
  def delete_params
    params.require(:room).permit(:password)
  end
  
  def password_check
    if Room.find(params[:id]).join_password.present?
      unless Room.find(params[:id]).id == session[:private_room]
        redirect_to room_password_lock_index_path(params[:id])
      end
    end
  end
end
