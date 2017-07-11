Rails.application.routes.draw do

root'themes#index'

 get 'themes' => 'themes#index'


end
