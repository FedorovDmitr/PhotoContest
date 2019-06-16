Rails.application.routes.draw do
  get 'users/new'
  get 'users/show'
  get 'users/index'
  namespace :users do
    get 'omniauth_callbacks/vkontakte'
  end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, :only => [:index, :destroy]

  # devise_scope :user do
  #   delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end
  
  root 'pages#home'
  get '/home', to: 'pages#home'
  get '/auth', to: 'pages#auth'
  get '/about', to: 'pages#about'
  
 
end

