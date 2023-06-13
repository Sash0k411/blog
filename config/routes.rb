Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  root "posts#index"
  resources :posts
  resources :users, only: [:index, :edit, :update, :destroy]
end
