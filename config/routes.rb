Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  namespace :admin do
    resource :landing_page, only: [:show, :edit, :update]
    resource :contacts_page, only: [:show, :edit, :update]
  end
  ActiveAdmin.routes(self)

  root 'main#index'

  get 'pages/:id', to: 'pages#show', as: 'pages'
  resources :services, only: :show do
    resources :articles, only: :show, shallow: true
  end

  resources :posts, only: [:index, :show] do
    resources :comments, only: [:create]
  end

  resources :prices, only: [:index]

  resources :contacts, only: [:index, :create]
end
