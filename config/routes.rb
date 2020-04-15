Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events do
    resources :guests, only: [:new, :create]
    resources :locations, only: [:new, :create]
    resources :moments, only: [:new, :create]
  end
  resources :guests, only: [:show, :destroy]
  resources :locations, only: [:destroy]
  resources :moments, only: [:destroy]
end
