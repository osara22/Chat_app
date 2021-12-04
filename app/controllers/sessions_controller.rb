class SessionsController < ApplicationController
  def new
  
  end
  
  def create
    user = User.find_by(name: session_params[:name])
    byebug
    if user.present?
      if user.authenticate(session_params[:password])
        session[:user_id] = user.id
        redirect_to root_path
      else
        render :new
      end
    else
      render :new
    end
  end
  
  def destroy
    sign_out
  end
  
  private
  def session_params
    params.require(:session).permit(:name, :password)
  end
  
  
end
