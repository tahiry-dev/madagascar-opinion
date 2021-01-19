class HtmlPagesController < ApplicationController

    def home
      @opinion = current_user.opinions.build if logged_in?
      @opinions = Opinion.paginate(page: params[:page], per_page: 5)
      @users = User.all
    end
  
    def profile
      @user = User.find(params[:id])
      @users = @user.followers.paginate(page: params[:page], per_page: 5)
    end
      
end


  