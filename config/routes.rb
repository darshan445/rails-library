Rails.application.routes.draw do
  root 'authors#index'

  resources :authors
  # get 'bs/index', to: 'bs#index'
  # get 'bs/new', to: 'bs#new'
  resources :books
  # project_add_form_field_path
  
end
