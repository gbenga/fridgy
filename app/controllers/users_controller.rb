class UsersController < ApplicationController
    skip_before_action :define_user, only: [:sign_in, :create]
    def sign_in
        @user = User.new
    end

    def profile
        render "show"
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        
        user = User.find_or_create_by(user_params)
        Fridge.create(user_id: user.id, capacity: 20)
        SpiceRack.create(user_id: user.id)
        session[:user_id] = user.id
        redirect_to profile_path
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end
    private

    def user_params
        params.require(:user).permit(:name,
        ingredients_attributes: [:price, :name, :quantity, :fridge_id, :meal_id]
        )
    end
end
