Rails.application.routes.draw do
  root 'pages#home'

  get 'about', to: 'pages#about'

  resources :trips do
    resources :places, only: [:index, :new, :create]
    post 'invite', to: 'trips#invite'
  end
  resources :places, only: [:show, :edit, :update, :destroy]

  devise_for :users
end
