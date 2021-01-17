class OpinionsController < ApplicationController

    before_action :logged_in_user, only: :create

    def create
        @opinion = current_user.opinions.build(opinion_params)
        
        if @opinion.save
            flash[:success] = "Thanks for sharing"
            redirect_to home_path
            
        else
            flash[:danger] = "your message is too short"
            redirect_to home_path
        end
    end

    private
    
        def opinion_params  
            params.permit(:text)
        end
end