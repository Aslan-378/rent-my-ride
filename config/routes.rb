Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'about', to: 'pages#about'

  resources :users, only: [:new, :create, :show] do
    resources :bookings, only: [:show, :index]
  end
  resources :bookings, only: [:destroy]
  resources :vehicles do
    resources :reviews, only: [:create, :new]
    resources :bookings, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
