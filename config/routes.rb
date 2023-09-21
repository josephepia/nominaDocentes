Rails.application.routes.draw do
  get 'main/home'
  resources :payrolls
  resources :authorizations
  resources :requests
  resources :research_groups
  resources :contracts
  resources :user_experiences
  resources :patents
  resources :profiles
  resources :degrees
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :degree_types
  resources :vacants
  resources :research_types
  resources :fees
  resources :researcher_categories
  resources :experiences
  resources :contracted_teaching_categories
  resources :aspiring_teaching_categories
  resources :patent_types
  resources :areas
  resources :resources
  resources :actions
  resources :permissions
  resources :roles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "main#home"
end
