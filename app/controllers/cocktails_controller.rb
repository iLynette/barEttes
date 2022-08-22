class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[ show edit update destroy ]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    respond_to do |format|
      if @cocktail.save
        format.html { redirect_to cocktail_url(@cocktail), notice: "Cocktail was successfully created." }
        format.json { render :show, status: :created, location: @cocktail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cocktail.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cocktail.update(cocktail_params)
        format.html { redirect_to cocktail_url(@cocktail), notice: "Cocktail was successfully updated." }
        format.json { render :show, status: :ok, location: @cocktail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cocktail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cocktail.destroy

    respond_to do |format|
      format.html { redirect_to cocktails_url, notice: "Cocktail was successfully destroyed." }
      format.json { head :no_content }
    end
  end
end
