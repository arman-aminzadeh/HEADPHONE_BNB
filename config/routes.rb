Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :products, only: [ :index, :show ] do
    resources :bookings, only: [ :create, :new ]
    resources :reviews, only: [ :create ]
  end

  resources :bookings, only: [ :destroy, :show ]
  resources :users do
    resources :products, only: [ :create, :new, :edit, :destroy, :update]
  end
end
