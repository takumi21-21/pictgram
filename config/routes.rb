Rails.application.routes.draw do
  
 
  
  get 'sessions/new'

  get 'pages/help'
  root 'pages#index'
  
  
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  resources :topics do
    resources :comments
  end
  
 end
