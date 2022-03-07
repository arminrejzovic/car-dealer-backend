Rails.application.routes.draw do
  resources :cars
  resources :vrstes
  resources :proizvodjacis
  resources :pogons
  resources :modelis
  resources :gorivos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
