Rails.application.routes.draw do
  root "dashboard#index"

  resources :dashboard, only: [:index]
  resources :resources
  resources :reminders
end
