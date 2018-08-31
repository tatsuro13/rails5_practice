Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'books/index'
  resources :users, only: [:index, :show]
  resources :articles

  namespace :admin do
    resources :users
  end

  scope :en do
    resources :books
  end

  scope module: :en do
    resources :books
  end

  get '/hello', to: 'application#hello'
end
