class HtmlPagesController < ApplicationController

    def home
      @opinion = current_user.opinions.build if logged_in?
      @opinions = Opinion.all
    end
  
    def contact

    end
end
  