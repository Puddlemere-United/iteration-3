Rails.application.routes.draw do

  get 'customer_products/Products'

  get 'customer_products/PaymentTypes'

  get 'customer_products/Orders'

  resources :products
  resources :payment_types
  resources :orders
  resources :product_types
  resources :users
  resources :order_products
  resources :sessions
  resources :customer_products
  
  get 'welcome/index'
  root 'welcome#index'
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # get 'customer_products/Products'
  # get 'customer_products/PaymentTypes'
  # get 'customer_products/Orders'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
