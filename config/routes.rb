Rails.application.routes.draw do
  resources :users
  resources :shows
  resources :review
  reviews :watch_later
end
