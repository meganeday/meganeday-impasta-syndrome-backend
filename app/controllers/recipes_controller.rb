class RecipesController < ApplicationController
before_action :authorized, only: [:create, :destroy]

    def create
        recipe = @user.recipes.create!(recipe_params)
        render json: recipe
    end

    def destroy
        recipe = @user.recipes.find(params[:id])
        recipe.destroy
        render json: recipe
    end

    def recipe_params
        params.permit(:recipe_title, :time, :meal_type, :image, ingredient_list: [], instruction_list: [])
    end

end