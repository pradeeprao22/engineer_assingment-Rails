Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  resources :codes
  root 'static#home'

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  #devise_for :users, controllers: { :registrations => "users/registrations" }
  #devise_for :users, :controllers => { registrations: 'registrations' }
  #get '/signup',   to: 'registrations#create'
  # resources :secretcode
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
