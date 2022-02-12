Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :products, only: [ :index, :show, :edit, :destroy, :update ] do
    resources :bookings, only: [ :create, :new ]
  end

  resources :bookings, only: [ :destroy, :show ]
  resources :users do
    resources :products, only: [ :create, :new]
  end
  resource :dashboard, only: [:show]
end
