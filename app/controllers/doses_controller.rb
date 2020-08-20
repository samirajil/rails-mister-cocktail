class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
    redirect_to cocktail_path(params[:cocktail_id])
  end

  private
  def dose_params
    paramshash = params.require(:dose).permit(:description, :ingredient_id)
    return paramshash.merge({:cocktail_id => params[:cocktail_id]})
  end
end
