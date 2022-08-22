class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[ show edit update destroy ]

  def index
    @cocktails = Cocktail.all
  end
end
