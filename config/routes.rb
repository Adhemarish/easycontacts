Rails.application.routes.draw do

  get 'tags/label'
  devise_for :users
  root to: 'pages#home'

  resource :dashboard, only: [:show] # DashboardsController

  resources :contacts do
    resources :notes, only: [:new, :create]
    resources :alerts, only: [:new, :create, :index]
  end

  resources :tags, only: [:create, :destroy]

  resources :notes, only: [:edit, :update, :destroy]

  resources :alerts, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/components', to: 'pages#components'
  get '/dashboard/results', to: 'dashboards#index'
 end
