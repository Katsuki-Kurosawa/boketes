Rails.application.routes.draw do

  devise_for :users
root'users#index'
 resources :themes, only: [:index, :new, :create] do
 resources :answers, only: [:new, :create] end
  resources :answers, only: [:index]
 resources :users, only: [:index, :show]
  resources :photo, only: [:index]

end
