Rails.application.routes.draw do
  devise_for :users
  
  resources :users, only: [:show, :update, :edit, :index] do
    resources :avatars, only: [:create]
  end

  resources :rents do 
    resources :comments
  end

  resources :bikes, only: [:new, :create, :show, :destroy]  do
    resources :img_bikes, only: [:create]
  end

  resources :charges
  root to: 'pages#index'

  get 'pages/contact'
  post 'rents/search'

end
