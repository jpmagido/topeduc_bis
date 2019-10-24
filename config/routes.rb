Rails.application.routes.draw do

  resources :calendar

  devise_for :users, controllers: {
        sessions: 'users/sessions', registrations: 'users/registrations'
      }
  
  get 'static/home'
  get 'static/secret_page'
  get 'static/test'
  root 'static#test'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
