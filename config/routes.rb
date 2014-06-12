Rails.application.routes.draw do
  resources :listings do
  	resources :buyers do
  	  resource :chat
  	end
  end

  get 'dashboards/show'

  get 'dashboard/show'


  root 'listings#index'

  resource :dashboard #, :only => [:index]

  devise_for :users
  resources :users, :only => [:show, :update]

end

