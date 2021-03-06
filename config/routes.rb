Rails.application.routes.draw do
  resources :chatrooms, only: [:index]

  resources :listings do
    resource :map
    resources :buyers
    resource :chatroom do
      resources :comments
    end
    resources :image_containers
  end


  root 'listings#index'

  devise_for :users, :controllers => { :registrations => "registrations" }
  get 'mypops' => 'users#show'
  resources :users, :only => [:show]

end

