Rails.application.routes.draw do
  root "activities#index"

  resources :activities
  resources :categories
end
