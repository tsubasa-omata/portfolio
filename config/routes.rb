Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users
  resources :users
  resources :posts, only: [:new, :create, :destroy, :show, :index ]

  resources :posts, only: [:create, :destroy, :create, :new, :show, :index] do
    resources :responses, only: [:create, :destroy, ]
  end
end