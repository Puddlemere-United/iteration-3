Rails.application.routes.draw do


  get 'customer_products/Products'

  get 'customer_products/PaymentTypes'

  get 'customer_products/Orders'

  get 'welcome/index'
  root 'welcome#index'


  resources :product_types
  resources :products
  resources :users
  resources :sessions

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
