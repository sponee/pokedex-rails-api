class PokedexController < ApplicationController  
  def index
    @pokemon = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find_by(pokedex_number: params[:pokedex_number])
  end
end
