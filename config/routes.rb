Rails.application.routes.draw do
  root 'users#index'
  resources :users
  ActiveAdmin.routes(self)
  post '/auth/login', to: 'authentication#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :animals, only: [:index, :show]
end
