Rails.application.routes.draw do

  root 'crimes#index'
  resources :cities
  resources :localities
  resources :crimes
  resources :crime_reporters
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

end
