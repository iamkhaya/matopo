Rails.application.routes.draw do
  namespace :admin do
    root 'application#index'

    resources :activities, only: [:new, :create, :edit, :update, :destroy]
    resources :categories, only: [:new, :create, :edit, :update, :destroy]
    resources :offerings, only: [:new, :create, :edit, :update, :destroy]
    resources :providers, only: [:new, :create, :edit, :update, :destroy]
    resources :reservations, only: [:new, :create, :edit, :update, :destroy]
    resources :trips, only: [:new, :create, :edit, :update, :destroy]
  end
  root 'home#index'
  devise_for :users

  resources :activities
  resources :categories
  resources :offerings
  resources :providers
  resources :reservations
  resources :trips
end
