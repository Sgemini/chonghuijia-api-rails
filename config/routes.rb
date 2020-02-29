Rails.application.routes.draw do
  root 'users#index'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  ActiveAdmin.routes(self)
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :animals, only: [:index, :show]
end
