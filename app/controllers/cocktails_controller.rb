class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show]
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
  end

  def cocktail_params
    params.require(:review).permit(:dose, :ingredient)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
