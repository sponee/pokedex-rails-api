class PokedexController < ApplicationController  
  def index
    @pokemon = Pokemon.all
  end
end
