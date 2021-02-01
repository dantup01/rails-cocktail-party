class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]
  before_action :set_dose, only: [:destroy]

  def new
    @dose = Dose.new
    @alcohols = Alcohol.all
    @mixers = Mixer.all
    @garnishes = Garnish.all
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = @dose.cocktail
    @dose.destroy

    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :alcohol_id, :mixer_id, :garnish_id)
  end
end
