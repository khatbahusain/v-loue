Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :rents
      resources :bikes
      resources :comments
      resources :private_messages

      root to: "users#index"
    end
  devise_for :users
  
  resources :private_messages, only: [:show, :new, :create]
 

  resources :users, only: [:show, :update, :edit, :index] do
    resources :avatars, only: [:create]
    
  end

  resources :rents do 
    resources :comments, only: [:create, :show, :new]

  end

  resources :bikes, only: [:new, :create, :show, :destroy]  do
    resources :img_bikes, only: [:create]
  end

  resources :charges, only: [:new, :create]

  root to: 'pages#index'
  get 'pages/contact'
  post 'rents/search'
  post 'private_messages/replay'

end
