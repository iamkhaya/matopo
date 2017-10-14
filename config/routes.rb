Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  resources :home do
    member do
      get 'results'
      get 'offering'
    end
  end

  resources :activities
  resources :categories
  resources :offerings
  resources :providers
  resources :reservations
  resources :trips

  devise_for :users, ActiveAdmin::Devise.config
end
