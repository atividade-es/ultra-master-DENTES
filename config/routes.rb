Rails.application.routes.draw do
  resources :atendimentos
  resources :patients
  resources :dentists
  root 'welcome#index'
  get '/search', to: 'patients#search', as: 'search_paciente'

  get '/search_atendimento', to: 'atendimentos#search', as: 'search_atendimento'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
