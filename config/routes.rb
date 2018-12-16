Rails.application.routes.draw do
  resources :codes
  root 'static#home'
  devise_for :users
  # devise_for :users, :controllers => { registrations: 'registrations' }
  # resources :secretcode
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
