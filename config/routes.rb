Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :rents, only: [:new, :create, :index, :show, :update, :destroy]

  resources :bikes, only: [:new, :create, :show, :destroy]

  root to: 'pages#index'

  get 'pages/contact'

end
