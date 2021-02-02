class IngredientsController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]
  before_action :set_ingredient, only: [:destroy]

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.cocktail = @cocktail
    @ingredient.alcohol = Alcohol.find(params[:ingredient][:alcohol]) unless params[:ingredient][:alcohol].blank?
    @ingredient.mixer = Mixer.find(params[:ingredient][:mixer]) unless params[:ingredient][:mixer].blank?
    @dose.garnish = Garnish.find(params[:ingredient][:garnish]) unless params[:ingredient][:garnish].blank?
    if @ingredient.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = @ingredient.cocktail
    @ingredient.destroy

    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_dose
    @ingredient = Ingredient.find(params[:id])
  end

  def dose_params
    params.require(:ingredient).permit(:method, :cocktail_id, :alcohol_id, :mixer_id, :garnish_id)
  end
end
