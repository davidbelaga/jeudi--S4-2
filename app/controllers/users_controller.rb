class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
  	redirect_to '/'
  end

  def index
  end
  
  def show
  	@user = User.find(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end


