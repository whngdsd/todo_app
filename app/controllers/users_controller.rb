class UsersController < ApplicationController
  before_action :forbid_login_user, {only: [:new, :create]}
  before_action :authenticate_user, {only: [:destroy]}

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "/"
    else
      render "new"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "ユーザー退会"
    redirect_to :root
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  

end
