Rails.application.routes.draw do
  root to: 'visitors#index'
  get '/dashboard', to: 'dashboard#index'
  devise_for :users
  resources :users
  namespace :api do
    resources :transfers
  end
end
