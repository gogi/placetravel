Rails.application.routes.draw do
  resources :trips
  root 'trips#index'

  devise_for :users
end
