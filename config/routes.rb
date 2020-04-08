Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events do
    resources :guests, only: [:new, :create]
  end
  resources :guests, only: [:show, :destroy]
end
