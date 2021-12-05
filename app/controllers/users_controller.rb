class UsersController < ApplicationController
  before_action :already_sign_in, only: [:new]
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      if @user.errors.full_messages == ["Nameはすでに存在します"]
        flash.now.alert = "その名前は既に使われています"
      else
        flash.now.alert = "入力に誤りがあります"
      end
      render :new
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
