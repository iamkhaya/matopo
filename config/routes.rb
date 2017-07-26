Rails.application.routes.draw do
  devise_for :users
  root 'categories#index'
  resources :categories
  resources :activities

  resources :providers do
    resources :offerings
  end
  resources :trips do
    resources :reservations
  end

end
