# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  root 'posts#index'
  resources :posts
  resources :users, only: %i[index edit update destroy]

  resources :posts do
    member do
      put 'like', to: 'posts#like'
      put 'unlike', to: 'posts#unlike'
    end
  end
end
