# frozen_string_literal: true

Rails.application.routes.draw do
  
  namespace :admin do
    resources :users, only: %i[index show destroy]
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :profile, only: %i[edit update show]
  
  root to: 'home#index'
end
