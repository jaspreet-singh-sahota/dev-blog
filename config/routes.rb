Rails.application.routes.draw do
  resources :categories
  resources :categoriesses
  resources :articles
   devise_for :users, controllers: {
    sessions: 'sessions'
  }
  root to: 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
