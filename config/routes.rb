Rails.application.routes.draw do

  devise_for :users
root'users#index'
 resources :themes, only: [:index, :new, :create] do
 resources :answers, only: [:index, :new] end
 resources :users, only: [:index, :show]
  resources :photo, only: [:index]

end
