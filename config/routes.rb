Rails.application.routes.draw do
  resources :users
  resources :shows
  resources :reviews
  resources :watch_later
  
  get 'secrets/new'
  get 'signup'  => 'users#new'
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  root 'application#welcome'



  get '/secret' => 'secrets#show'
end
