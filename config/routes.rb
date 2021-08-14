Rails.application.routes.draw do
  resources :users
  resources :shows
  resources :reviews
  resources :watch_later
  
  #get 'secrets/new'
  #get 'signup'  => 'users#new'
  #get '/login' => 'sessions#new'
  #post 'login' => 'sessions#create'
  #delete 'logout' => 'sessions#logout'
  #get '/logout' => 'sessions#logout'

  root 'sessions#welcome'
  get '/welcome', to: 'sessions#welcome'
  get '/signup', to: 'sessions#signup'
  post '/signup', to: 'users#signup'

  get '/login', to: 'sessions#login'
  post '/signin', to: 'sessions#signin'

  delete '/logout', to: 'sessions#logout'
  get '/logout', to: 'sessions#logout'

  post 'auth/github/callback', to: 'sessions#callback'

  #root 'shows#index'
  




  #get '/secret' => 'secrets#show'
end
