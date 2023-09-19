Rails.application.routes.draw do
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
