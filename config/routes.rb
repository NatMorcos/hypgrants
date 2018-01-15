Rails.application.routes.draw do
  get 'errors/forbidden'

  # get 'grants/new'

  # get 'grants/create'

  # get 'grants/index'

  # get 'grant/index'

  root 'home#index'

  get 'home/index'
  get 'submissions/pre_registration_info'

  resources :submissions
  resources :grants

  devise_for :users, :controllers => { registrations: 'registrations' }
end
