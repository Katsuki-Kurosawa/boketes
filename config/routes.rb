Rails.application.routes.draw do

root'boketes#index'

 get 'bokete' => 'boketes#index'


end
