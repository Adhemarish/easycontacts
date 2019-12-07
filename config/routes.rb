Rails.application.routes.draw do

  get 'tags/label'
  devise_for :users
  root to: 'pages#home'

  resource :dashboard, only: [:show] # dashboardsController # show
  get '/search', to: 'dashboards#search', as: 'tag_search' # dashboardsController#search

  resources :contacts do
    resources :notes, only: [:new, :create]
    resources :alerts, only: [:new, :create, :index]
  end

  resources :tags, only: [:create, :destroy]

  resources :notes, only: [:edit, :update, :destroy]

  get '/components', to: 'pages#components'
  get '/dashboard/results', to: 'dashboards#index'
 end
