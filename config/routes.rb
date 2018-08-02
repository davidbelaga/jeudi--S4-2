Rails.application.routes.draw do
  get 'sessions/new'
  root 'pages#index'
  get 'pages/home'
  get 'pages/secret'
  get 'users/new'
  get 'signup', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :pages

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


end
