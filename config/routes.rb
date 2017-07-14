Rails.application.routes.draw do

  devise_for :users
root'users#index'
 resources :themes, only: [:index, :new, :create]
 resources :answers, only: [:index, :new]
 resources :users, only: [:index, :show]
  resources :photo, only: [:index]

end
