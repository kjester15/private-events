Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :events
  resources :event_users
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check
  get 'profile', to: 'users#show'
  # Defines the root path route ("/")
  root 'events#index'
end
