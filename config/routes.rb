Rails.application.routes.draw do
  resources :reports
  resources :activity_pendings
  resources :state_projects
  resources :evaluations
  resources :investigation_projects
  resources :project_areas
  resources :projects
  resources :categories
  resources :states
  resources :research_units
  resources :investigation_areas
  resources :evaluators
  resources :investigators
  resources :coordinators
  get 'welcome/header'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
