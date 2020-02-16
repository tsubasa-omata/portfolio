Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users
  resources :users do
    resources :threads, only: [:new, :create, :destroy ]
  end

  resources :threads, only: [:create, :destroy, :create, :new, :show, :index] do
    resources :responses, only: [:create, :destroy, ]
  end

  

end