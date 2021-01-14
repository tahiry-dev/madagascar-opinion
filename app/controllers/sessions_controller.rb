class SessionsController < ApplicationController
    def new; end

    def create
      user = User.find_by(username: params[:session][:username])
      if user
        log_in user
        #redirect_to user
  
      else
        flash.now[:danger] = 'Invalid Username, Please try again'
        render :new
      end
    end
  
    def destroy
      log_out
      flash[:notice] = 'Thanks for your opinions'
      redirect_to login_path
    end
end