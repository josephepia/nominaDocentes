Rails.application.routes.draw do
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
end
