Rails.application.routes.draw do
 
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  
  devise_for :users
  resources :events do
  	resources :tickets
  end
  root "events#index"
  end
