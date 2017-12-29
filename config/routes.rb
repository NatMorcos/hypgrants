Rails.application.routes.draw do
  # get 'grants/new'

  # get 'grants/create'

  # get 'grants/index'

  # get 'grant/index'

  get 'home/index'
  root 'home#index'

  get 'error/index'

  resources :submissions

  resources :grants


  devise_for :users

end
