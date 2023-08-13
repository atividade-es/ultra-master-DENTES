Rails.application.routes.draw do
  get '/patients/search', to: 'patients#search', as: 'search_paciente'
  resources :atendimentos
  resources :patients
  resources :dentists
  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
