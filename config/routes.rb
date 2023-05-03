Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  get 'home/about', to: "homes#about", as: 'about'
  resources :users, only: [:index, :edit, :show, :update]
  resources :books, only: [:new, :create, :index, :edit, :show, :destroy, :update]
  
 end