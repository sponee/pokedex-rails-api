Rails.application.routes.draw do
  defaults format: :json do
    get 'pokedex', to: 'pokedex#index'
    get 'pokedex/:pokedex_number', to: 'pokedex#show'
  end
end
