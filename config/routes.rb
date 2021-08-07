Rails.application.routes.draw do
  resources :users
  resources :shows
  resources :reviews
  resources :watch_later
  
  get 'secrets/new'

  root 'application#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secret' => 'secrets#show'
end
