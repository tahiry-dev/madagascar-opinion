class UsersController < ApplicationController
    
    def  new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        flash[:success] = "Welcome to Madagascar-Opinion"
         #handle success
      else
        render :new
      end
    end

    private
        def user_params
            params.require(:user).permit(:username, :fullname)
        end
    
end