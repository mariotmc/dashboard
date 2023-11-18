Rails.application.routes.draw do
  root "dashboard#index"

  resources :dashboard, only: [:index]
  namespace :dashboard do
    resources :tasks
  end

  resources :resources
  resources :reminders
end
