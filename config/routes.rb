Rails.application.routes.draw do
  # get 'grants/new'

  # get 'grants/create'

  # get 'grants/index'

  # get 'grant/index'

  # get 'grant/new'

  # get 'grant/create'

  get 'home/index'
  root 'home#index'
  
  resources :submissions

  resources :grants


  devise_for :users

end
