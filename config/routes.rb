Rails.application.routes.draw do


# Upload Documents: 
  resources :resume
  resources :permis_b
  resources :diploma
  resources :kbi
  resources :id
  resources :carte_vitale
  resources :rib

# Calendar:
  resources :calendar

# DEVISE: 
  devise_for :users, controllers: {
        sessions: 'users/sessions', registrations: 'users/registrations'
      }
 
# Other Routes:
  get 'static/home'
  get 'static/secret_page'
  get 'static/test'
  root 'static#test'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
