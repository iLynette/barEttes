class ListsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end
end
