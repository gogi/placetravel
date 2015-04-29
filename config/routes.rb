Rails.application.routes.draw do
  root 'pages#home'

  get 'about', to: 'pages#about'

  resources :trips do
    resources :places
    post 'invite', to: 'trips#invite'
  end

  devise_for :users
end
