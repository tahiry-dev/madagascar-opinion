class FollowingsController < ApplicationController
  def create
    user = User.find(params[:followed_id])
    current_user.follow(user)
    redirect_to profile_path(user)
  end

  def destroy
    user = Following.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to profile_path(user)
  end
end
