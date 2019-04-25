class PokedexController < ApplicationController  
  def index
    @pokemon = JSON.parse(File.open('config/pokedex.json').read)[0,50]
  end
end
