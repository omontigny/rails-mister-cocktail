class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(doses_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    # ingredient = Ingredient.find(doses_params)
    @dose.cocktail = @cocktail # Set foreign key restaurant_id
    # @dose.ingredient = ingredient
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

private

  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
