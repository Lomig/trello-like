# frozen_string_literal: true

# == Route Map
#

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :boards, only: %w[index show] do
    resources :tasks, only: ['create'] do
    end
  end

  resources :tasks, only: [] do
    member { patch :move }
  end
end
