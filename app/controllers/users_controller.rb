class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        @fridge = Fridge.create(user_id: @user.id, capacity: 20)
        redirect_to user_path(@user)
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
