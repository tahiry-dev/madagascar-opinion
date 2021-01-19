class HtmlPagesController < ApplicationController
  before_action :logged_in_user, only: %i[home profile]

  def home
    @opinion = current_user.opinions.build
    @opinions = Opinion.paginate(page: params[:page], per_page: 5).includes(:author)
    @users = User.all
  end

  def profile
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page], per_page: 5)
  end
end
