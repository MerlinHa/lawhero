class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to mydashboard_path
    else
      render
    end
  end

  private

  def user_params
    params.require(:user).permit(:photo, :first_name, :last_name)
  end
end
