class PasswordLockController < ApplicationController
  def index
    @room = Room.find(params[:room_id])
  end
  
  def create
    room = Room.find(params[:room_id])
    if room.join_password == password_lock_params[:join_password]
      session[:private_room] = room.id
      redirect_to room_path(room)
    else
      render :index
    end
  end
  
  private
  def password_lock_params
    params.require(:password_lock).permit(:join_password)
  end
end