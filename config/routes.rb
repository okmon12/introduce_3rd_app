Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :comments, only: [:index, :create, :new, :show] 
  end
    root to: 'users#index'

end