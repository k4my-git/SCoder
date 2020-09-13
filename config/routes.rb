Rails.application.routes.draw do
  root 'homes#top'
  get 'homes/about' => 'homes#about', as:'homes_about'

  devise_for :users
  
  resources :users, only: [:show, :edit, :update]
  resources :codes, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
  	resource :favorites, only: [:create, :destroy]
  	resources :post_comments, only: [:create, :destroy]
  end
end
