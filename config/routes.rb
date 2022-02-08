Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :products, only: [ :index, :show, :edit, :destroy, :update ]

  resources :bookings, only: [ :create, :new, :destroy ]
  
  resources :users do 
    resources :products, only: [ :create, :new, :destroy ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
