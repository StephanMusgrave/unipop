Rails.application.routes.draw do
  resources :listings do
  	resources :buyers
  end
  
  root 'listings#index'

  devise_for :users
  resources :users, :only => [:show, :update]

end

