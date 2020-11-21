class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    # @cocktail = Cocktail.find(params[:id])
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

  def edit
    # @cocktail = Cocktail.find(params[:id])
  end

  def update
    # @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
    # Will raise ActiveModel::ForbiddenAttributesError
    # no need for app/views/restaurants/create.html.erb
    redirect_to root_path
  end

  def destroy
    # @cocktail = article.find(params[:id])
    @cocktail.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to root_path
  end

 private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
