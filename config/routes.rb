Rails.application.routes.draw do

  devise_for :users
root'users#index'
 resources :themes, only: [:index, :new, :create]
 resources :answers, only: [:index]
 resources :users, only: [:index, :show]

end
