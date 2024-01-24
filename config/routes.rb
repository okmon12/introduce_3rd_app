Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :comments, only: [:index, :create, :new] 
  root to: 'users#index'
end
end