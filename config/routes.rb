Rails.application.routes.draw do
  get 'pages/help'
  root 'pages#index'
  
  resources :users
  
end
