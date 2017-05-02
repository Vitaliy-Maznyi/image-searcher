Rails.application.routes.draw do
  root 'search#index'

  resources :search, only: [:show, :new], path: 'images'
end
