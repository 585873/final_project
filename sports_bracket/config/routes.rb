Rails.application.routes.draw do
  root "home#index"
  resources :home
  resources :leagues
  resources :games
end
