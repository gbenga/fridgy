Rails.application.routes.draw do
  resources :meals, only: []
  resources :spice_racks, only: []
  resources :spices, only: []
  resources :ingredients, only: []
  resources :fridges, only: []
  resources :users, only: [:show, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
