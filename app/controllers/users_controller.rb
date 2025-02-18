class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = t "signup_suc"
      redirect_to root_url
    else
      flash[:danger] = t "danger"
      render :new
    end
  end

  def show; end

  private

  def user_params
    params.require(:user).permit :name, :email, :address, :phone, :password,
      :password_confirmation
  end
end
