Rails.application.routes.draw do
  resources :listings
  root 'listings#index'

  devise_for :users
  resources :users, :only => [:show, :update]

end

