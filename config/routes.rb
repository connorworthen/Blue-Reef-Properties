Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'users#home'
  get '/signup', to: 'users#new', as: "new_user"
  post '/signup', to: 'users#create', as: 'users_path'
  get '/login', to: 'sessions#new' 
  post '/login', to: 'sessions#create' 
  delete '/logout', to: 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  get 'listings/new', to: 'listings#new'
  post 'listings/new', to: 'listings#create'
  
end