Rails.application.routes.draw do
  root 'search#index'

  resources :images, only: [:index, :show]
end
