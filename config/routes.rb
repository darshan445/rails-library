Rails.application.routes.draw do
  # get 'projects/index'
  # get 'companies/index'
  # root 'authors#index'

  resources :authors
  # get 'bs/index', to: 'bs#index'
  # get 'bs/new', to: 'bs#new'
  resources :books
  # project_add_form_field_path

  root 'companies#index'

  resources :companies, only: [:index,:create,:edit,:new,:show,:update,:destroy]
  resources :projects, only: [:index,:create,:edit,:new,:show,:update,:destroy]
  
end
