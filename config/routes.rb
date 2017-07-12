Rails.application.routes.draw do

  devise_for :users
root'answers#index'
 resources :themes, only: [:index, :new, :create]
 resources :answers, only: [:index]
#comment

end
