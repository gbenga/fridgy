class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.all
    end

    def new
        @ingredient = Ingredient.new
        
    end

    def create
        ingredient = Ingredient.new(ingredient_params)
        ingredient.fridge_id = @user.fridge.id
        #needs to be programmatic at some point
        ingredient.meal_id = 1
        
        ingredient.save
        redirect_to ingredients_path
    end

    private

    def ingredient_params
        params.require(:ingredient).permit(:name, :quantity, :quantity, :fridge_id,:meal_id)
    end
end
