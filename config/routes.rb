Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # REFACTO
  # --------------
  # get "/restaurants/new", to: "restaurants#new" # Create a new Restaurant (CREATE>GET>#new)
  # post "/restaurants", to: "restaurants#create" # Create a new Restaurant (CREATE>POST>#create)
  # get "/restaurants", to: "restaurants#index" # All restaurants (READ>GET>#index)
  # get "/restaurants/:id", to: "restaurants#show", as: :restaurant # Details of 1 restaurant (READ>GET>#show)

  resources :restaurants, only: [:new, :create, :index, :show] do
    resources :reviews, only: [:new, :create]
  end
end
