class UsersController < ApplicationController
  before_action :find_id, only: %i[show edit update]
  before_action :logged_in_user, only: %i[show edit update]

  def show; end

  def edit; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = 'Welcome to Madagascar-Opinion'
      redirect_to home_path
    else
      render :new
    end
  end

  def update
    if @user.update(params.require(:user).permit(:photo, :coverimage))
      flash[:success] = 'your photo was uploaded successfully.'
      redirect_to home_path
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :fullname)
  end

  def find_id
    @user = User.find(params[:id])
  end
end
