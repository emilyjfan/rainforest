class UsersController < ApplicationController
  def new
  	@new = User.new
  end

  def create
  	@users = User.new(user_params)
  	if @user.save
  		redirect_to products_url, notice: "Signed up!"
  	else
  		render "new"
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
