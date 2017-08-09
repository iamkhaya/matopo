Rails.application.routes.draw do
  namespace :admin do
    root 'application#index'
    resources :activities, only: [:new, :create, :edit, :update, :destroy]
    resources :categories, only: [:new, :create, :edit, :update, :destroy]
    resources :offerings, only: [:new, :create, :edit, :update, :destroy]
    resources :providers, only: [:new, :create, :edit, :update, :destroy]
  end
  root 'categories#index'
  devise_for :users
  resources :categories
  resources :activities
  resources :providers
  resources :offerings
  resources :trips
  resources :reservations
end
