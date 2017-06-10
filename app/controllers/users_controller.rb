class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(required_params)
    if @user.save
      redirect_to @user
    else
      redirect_to sign_up_path
    end
  end

  private

  def required_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
