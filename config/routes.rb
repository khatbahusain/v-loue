Rails.application.routes.draw do
  devise_for :users
  
  resources :users, only: [:show, :update] do
    resources :avatars, only: [:create]
  end

  resources :rents, only: [:new, :create, :index, :show, :update, :destroy]

  resources :bikes, only: [:new, :create, :show, :destroy]  do
    resources :img_bikes, only: [:create]
  end

  resources :charges
  root to: 'pages#index'

  get 'pages/contact'

end
