Rails.application.routes.draw do
  devise_for :admins
  get '/patients/search', to: 'patients#search', as: 'search_paciente'
  get '/atendimentos/search', to: 'atendimentos#search', as: 'search_atendimento'
  get '/dentists/search', to: 'dentists#search', as: 'search_dentist'
  resources :atendimentos
  resources :patients
  resources :dentists
  root 'welcome#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
