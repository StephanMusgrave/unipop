Rails.application.routes.draw do
  resources :listings do
    resource :map
  	resources :buyers
    resource :chatroom do
      resources :comments
    end
  end

  get 'dashboards/show'

  get 'dashboard/show'


  root 'listings#index'

  resource :dashboard #, :only => [:index]

  devise_for :users, :controllers => { :registrations => "registrations" }
  get 'user/profile' => 'users#show'

end

