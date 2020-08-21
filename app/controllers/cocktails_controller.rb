class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]
  
  def index
    @underline_index = true
    @cocktails = Cocktail.all
    @images = ["001-martini.png", "002-mojito.png", "004-cosmopolitan.png", "014-fruit.png", "030-squeezer.png"]
  end

  def new
    @cocktail = Cocktail.new
    @underline_new = true
  end

  def create
    @underline_new = true
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to new_cocktail_dose_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @underline_index = true
    @doses = @cocktail.doses
    @dose = Dose.new
  end

  private 

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
