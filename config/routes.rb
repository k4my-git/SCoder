Rails.application.routes.draw do
  root 'homes#top'
  get 'homes/about'
  resources :users, only: [:show, :edit, :update]
  resources :codes, only: [:index, :show, :new, :create, :update]
  
  devise_for :users
end
