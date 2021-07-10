Rails.application.routes.draw do
  get 'subjects/index'
  get 'teachers/index'
  get 'tutions/index'
  # get 'projects/index'
  # get 'companies/index'
  # root 'authors#index'

  resources :authors
  # get 'bs/index', to: 'bs#index'
  # get 'bs/new', to: 'bs#new'
  resources :books
  # project_add_form_field_path

  root 'companies#index'

  resources :companies 
  resources :projects

  resources :subjects
  resources :teachers
  resources :tutions
  
end
