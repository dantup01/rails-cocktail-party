class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create, :edit, :update]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.ingredient = Ingredient.find(params[:dose][:ingredient]) unless params[:dose][:ingredient].blank?
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @dose.update(dose_params)
      redirect_to cocktail_path(@cocktail), notice: "Dosage Updated"
    else
      render :edit
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
