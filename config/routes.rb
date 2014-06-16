Rails.application.routes.draw do
  resources :listings do
    resource :chatroom
    resource :map
  	resources :buyers
  end

  get 'dashboards/show'

  get 'dashboard/show'


  root 'listings#index'

  resource :dashboard #, :only => [:index]

  devise_for :users, :controllers => { :registrations => "registrations" }
  get 'user/profile' => 'users#show'
  resources :users, :only => [:show]

end

