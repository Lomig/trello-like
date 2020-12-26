# == Route Map
#

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :boards, only: %w[index show]
end
