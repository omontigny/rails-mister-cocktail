class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    # ingredient = Ingredient.create!(params[:ingredient])
    # dose = Dose.new(params[:dose])
    # dose.cocktail = cocktail  # Set foreign key restaurant_id
    # dose.ingredient = ingredient
    # dose.save!

    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end

    # no need for app/views/restaurants/create.html.erb
  end

 private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
