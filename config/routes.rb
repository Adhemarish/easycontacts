Rails.application.routes.draw do
  get 'contacts/index'
  get 'contacts/show'
  get 'contacts/new'
  get 'contacts/create'
  get 'contacts/edit'
  get 'contacts/update'
  get 'contacts/destroy'
  devise_for :users
  root to: 'pages#home'

  resource :dashboard, only: [:show] # DashboardsController

  resources :contacts do
    resources :notes, only: [:new, :create]
    resources :alerts, only: [:new, :create]
  end

  resources :tags, only: [:create]

  resources :notes, only: [:update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/components', to: 'pages#components'
end
