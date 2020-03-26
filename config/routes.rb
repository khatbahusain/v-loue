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
  
  resources :private_messages, only: [:show, :create, :new]


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
  post 'private_messages/replay'

end
