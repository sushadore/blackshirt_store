Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
          sessions: 'users/sessions'
        }

  resources :products

  root to: "home#index"
end
