class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :signed_in?
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  
  def signed_in?
    current_user.present?
  end

  def sign_out
    session[:user_id] = nil
  end
  
  def already_sign_in
    redirect_to root_path if signed_in?
  end
  
end
