Rails.application.routes.draw do

  root 'crimes#index'
  resources :cities
  resources :localities
  resources :crimes
  resources :crime_reporters
end
