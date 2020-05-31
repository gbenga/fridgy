Rails.application.routes.draw do
  resources :meals, only: []
  resources :spice_racks, only: []
  resources :spices, only: []
  resources :ingredients, only: [:index]
  resources :fridges, only: []
  resources :users, only: [:show, :new, :create, :edit, :update]
  get '/home', to: "users#sign_in", as: 'home'
  get '/profile', to: "users#profile", as: 'profile'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
