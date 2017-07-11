Rails.application.routes.draw do

root'answers#index'
 resources :themes, only: [:index, :new, :create]
 resources :answers, only: [:index]

end
