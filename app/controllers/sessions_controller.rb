class SessionsController < ApplicationController
  before_action :already_sign_in, only: [:new]
  def new
  
  end
  
  def create
    user = User.find_by(name: session_params[:name])
    if user.present?
      if user.authenticate(session_params[:password])
        session[:user_id] = user.id
        redirect_to root_path
      else
        flash.now.alert = "入力に誤りがあります"
        render :new
      end
    else
      flash.now.alert = "入力に誤りがあります"
      render :new
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
  
  private
  def session_params
    params.require(:session).permit(:name, :password)
  end
  
end
