Rails.application.routes.draw do
  devise_for :users
resources :groups do

  member do
    post :join
    post :quit
  end

  resources :posts
end

namespace :account

  root 'groups#index'
end
