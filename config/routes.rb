Rails.application.routes.draw do
  resources :places

  resources :trips
  root 'trips#index'

  devise_for :users
end
