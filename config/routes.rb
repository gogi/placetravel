Rails.application.routes.draw do
  root 'trips#index'

  resources :trips do
    resources :places, only: [:index, :new, :create]
  end
  resources :places, only: [:show, :edit, :update, :destroy]

  devise_for :users
end
