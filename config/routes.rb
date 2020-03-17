Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :rents, only: [:new, :create, :index, :show, :update, :destroy]
  resources :carts, only: [:new, :index, :update]
  resources :bikes, only: [:new, :create, :show]

  root to: 'pages#index'

  get 'pages/contact'

end
