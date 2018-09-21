Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'main#index'

  get 'pages/:id', to: 'pages#show', as: 'pages'
end
