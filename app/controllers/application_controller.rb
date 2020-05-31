class ApplicationController < ActionController::Base
    before_action :define_user

    def define_user
        @user = User.find(session[:user_id])
    end
end
