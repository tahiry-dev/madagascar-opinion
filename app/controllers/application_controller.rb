class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  # rubocop:disable Style/GuardClause
  def logged_in_user
    unless logged_in?
      flash[:danger] = 'Please log in First'
      redirect_to login_url
    end
  end
  # rubocop:enable Style/GuardClause
end
