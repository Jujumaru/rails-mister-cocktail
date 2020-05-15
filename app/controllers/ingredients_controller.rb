class IngredientsController < ApplicationController
    def index
      @ingredients = Ingredient.all
    end
  
    def show
      @ingredient = Ingredient.find(params[:id])
    end
  
    def new
      @ingredient = Ingredient.new
    end
  
    def create
      @cocktail = Cocktail.find(params[:id])
      @ingredient = Ingredient.new(ingredient_params)
      @ingredient.cocktail = @cocktail
      @ingredient.save
      redirect_to ingredient_path(@ingredient)
    end
  
    def edit
      @ingredient.update(ingredient_params)
      @ingredient = Ingredient.find(params[:id])
      redirect_to ingredient_path(@ingredient)
    end
  
    def destroy
      @ingredient = Ingredient.find(params[:id])
      @ingredient.destroy
      redirect_to ingredients_path
    end
  
    private
  
    def ingredient_params
      params.require(:ingredient).permit(:name)
    end
end
