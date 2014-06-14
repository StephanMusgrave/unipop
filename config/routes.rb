Rails.application.routes.draw do
  resources :listings do
    resource :map
  	resources :buyers do
  	  resource :chatrooms
  	end
  end

  get 'dashboards/show'

  get 'dashboard/show'


  root 'listings#index'

  resource :dashboard #, :only => [:index]

  devise_for :users, :controllers => { :registrations => "registrations" }
  resources :users, :only => [:show]

end

