Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # get 'dashboard/index'

  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  # get 'dashboard' => 'dashboard#index', as: :dashboard
  namespace :users do
      get 'dashboard' => 'dashboard#index', as: :dashboard
  end

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
    }
  end
