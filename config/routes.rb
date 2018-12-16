Rails.application.routes.draw do
  resources :codes
  root 'static#home'
  devise_for :users
  resources :secretcode
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
