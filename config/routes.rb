Rails.application.routes.draw do
  resources :users
  resources :shows
  resources :reviews
  resources :watch_later
  

  root 'sessions#welcome'

  get '/welcome', to: 'sessions#welcome'
  get '/signup', to: 'sessions#signup'
  post '/signup', to: 'users#signup'

  get '/login', to: 'sessions#login'
  post '/signin', to: 'sessions#signin'

  delete '/logout', to: 'sessions#logout'
  get '/logout', to: 'sessions#logout'

  get '/auth/:provider/callback' => 'sessions#omniauth'

  get '/reviews', to: 'reviews#index'
  get '/reviews/:id/edit', to: 'reviews#edit'
  get '/reviews/:id', to: 'reviews#index'
  
  #post '/shows/:id/reviews/new', to: 'shows#new'
  
end
