Rails.application.routes.draw do
  resources :trips

  devise_for :users
end
