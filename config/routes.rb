Rails.application.routes.draw do
  root "dashboard#index"

  resources :dashboard, only: [:index]
  namespace :dashboard do
    resources :tasks
  end

  resources :resources
  resources :reminders

  namespace :tasks do
    resources :completes, only: [:update]
    resources :positions, only: [:update]
  end

  namespace :stages do
    resources :positions, only: [:update]
  end
end
