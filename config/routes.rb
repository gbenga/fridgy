Rails.application.routes.draw do
  resources :meals
  resources :spice_racks
  resources :spices
  resources :ingredients
  resources :fridges
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
