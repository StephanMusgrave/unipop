Rails.application.routes.draw do

  devise_for :users
  resources :users, :only => [:show, :update]
  resources :listings
  root 'listings#index'

end

