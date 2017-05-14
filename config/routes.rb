Rails.application.routes.draw do
  devise_for :users
  root 'categories#index'

  resources :categories do
    resources :activities
  end
  resources :continents do
    resources :regions
  end

  resources :providers
end
