Rails.application.routes.draw do
  resources :users
  resources :shows
  resources :reviews
  resources :watch_later
end
