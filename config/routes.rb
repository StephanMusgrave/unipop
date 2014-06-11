Rails.application.routes.draw do
  get 'dashboards/show'

  get 'dashboard/show'

  resources :listings
  root 'listings#index'

  resource :dashboard #, :only => [:index]

  devise_for :users
  resources :users, :only => [:show, :update]

end

