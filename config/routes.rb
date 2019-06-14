Rails.application.routes.draw do
  namespace :users do
    get 'omniauth_callbacks/vkontakte'
  end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, :only => [:index, :destroy]
  
  root 'pages#home'
  get '/home', to: 'pages#home'
  get '/auth', to: 'pages#auth'
  get '/about', to: 'pages#about'
  
 
end

