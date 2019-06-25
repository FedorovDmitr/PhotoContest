Rails.application.routes.draw do
  get 'users/new'
  get 'users/show'
  get 'users/index'

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  root 'pages#home'
  get '/home', to: 'pages#home'
  get '/auth', to: 'pages#auth'
  get '/about', to: 'pages#about'

  resources :users
  
 
end

