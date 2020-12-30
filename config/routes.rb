# frozen_string_literal: true

# == Route Map
#

Rails.application.routes.draw do
  get 'users/logout', to: 'users#logout', as: :user_logout

  devise_for :users
  root to: 'pages#home'

  resources :boards, only: %w[index show]

  resources :columns, only: [] do
    resources :tasks, only: %w[new create]
  end

  resources :tasks, only: [] do
    member { patch :move }
  end

  resource :dashboard, only: [] do
    member { get :me }
  end
end
