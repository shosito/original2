Rails.application.routes.draw do
  devise_for :users
    root to: "tops#index"
    resources :contents do
      resources :comments, only: :create
    end
    resources :users, only: :show
    resources :videos, only: [:new,:create,:show]
end
