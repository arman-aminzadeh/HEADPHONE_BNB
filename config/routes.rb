Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [ :index, :show, :edit, :destroy ] do
    resources :bookings, only: [ :create ]
  end
  root to: 'pages#home'
  resources :users do
    resources :products, only: [ :create, :new, :destroy ]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
