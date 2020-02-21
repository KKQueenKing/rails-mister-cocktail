class CocktailsController < ApplicationController
  before_action :set_task, only: [:edit, :update, :show]
  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    # @restaurant = Restaurant.new(params[:restaurant])
    # @restaurant.save
    redirect_to cocktail_path(@cocktail)
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  private

  def set_task
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photos)
  end
end
