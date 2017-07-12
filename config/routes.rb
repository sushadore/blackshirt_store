Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
          sessions: 'users/sessions'
        }

  resources :products do
    resources :reviews
  end

  resources :users do
    resources :accounts
  end

  resources :products
  resources :order_items
  resource :cart, only: [:show]

  root to: "home#index"
end
