Rails.application.routes.draw do
  resources :categories
  resources :categoriesses
  resources :articles
   devise_for :users, controllers: {
    sessions: 'sessions'
  }
  root to: 'categories#index'
  get 'search_articles', to: 'articles#search'
  resources :articles do
    resources :votes
  end
end
