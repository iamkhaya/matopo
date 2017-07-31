Rails.application.routes.draw do
  devise_for :users
  root 'categories#index'
  resources :categories
  resources :activities
  resources :providers
  resources :offerings
  resources :trips
  resources :reservations
end
