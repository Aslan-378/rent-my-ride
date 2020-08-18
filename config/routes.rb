Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'about', to: 'pages#about'

  resources :users, only: [:new, :create] do
    resources :vehicles, only: [:new, :create, :show, :index]
    resources :bookings, only: [:new, :create, :show, :index]
  end
  resources :bookings, only: [:destroy]
  resources :vehicles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
