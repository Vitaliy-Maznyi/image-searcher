Rails.application.routes.draw do
  root 'search#index'

  resources :search, only: [:index, :show], path: 'photo'
end
