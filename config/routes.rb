Rails.application.routes.draw do
  defaults format: :json do
    get 'pokedex', to: 'pokedex#index'
  end
end
