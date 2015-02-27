Rails.application.routes.draw do

  #goals
  root 'goals#index'
  resources :goals
  get 'goals/completed' => 'goals#completed'
  
  #weather
  get 'weather' => 'weather#index'
  get 'weather/api' => 'weather#api'

  #blog
  resources :articles

end
