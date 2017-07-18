Rails.application.routes.draw do
  devise_for :users
  root 'categories#index'
  resources :categories do
    resources :activities
  end
  resources :continents do
    resources :regions
  end
  resources :providers do
    resources :offerings
  end
  resources :trips do
    resources :reservations
  end

end
