Rails.application.routes.draw do
  get 'home/index'
  
  resources :submissions


  root 'home#index'

  devise_for :users

end
