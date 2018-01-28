Rails.application.routes.draw do
  get 'errors/forbidden'

  root 'home#index'

  get 'home/index'
  get 'submissions/pre_registration_info'

  resources :submissions
  resources :grants

  devise_for :users, :controllers => { registrations: 'registrations' }
end
