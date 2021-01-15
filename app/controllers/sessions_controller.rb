class SessionsController < ApplicationController

    before_action :logged_in_user, only: :destroy

    def new; end

    def create
      user = User.find_by(username: params[:session][:username])
      if user
        log_in user
        flash[:success] = "Welcome Back!"
        redirect_to users_path
  
      else
        flash.now[:danger] = 'Invalid Username, Please try again'
        render :new
      end
    end
  
    def destroy
      log_out
      flash[:warning] = 'Thanks for your opinions, see you later!'
      redirect_to login_path
    end

end