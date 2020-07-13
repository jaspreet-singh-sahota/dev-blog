Rails.application.routes.draw do
  resources :categories, only: [:index, :show, :new, :create]
  resources :articles, only: [:search, :show, :new, :create]
  devise_for :users, controllers: {
    sessions: 'sessions'
  }
  root to: 'categories#index'
  get 'search_articles', to: 'articles#search'
  resources :articles do
    resources :votes, only: [:create, :destroy]
  end
end
