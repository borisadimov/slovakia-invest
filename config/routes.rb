Rails.application.routes.draw do
  # Errors
  get '/401', to: 'errors#unauthorized'
  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#error'

  devise_for :admin_users, ActiveAdmin::Devise.config

  namespace :admin do
    resource :landing_page, only: [:show, :edit, :update]
    resource :contacts_page, only: [:show, :edit, :update]
    resource :about_us_page, only: [:show, :edit, :update]
    resource :footer, only: [:show, :edit, :update]
    resource :news_page, only: [:show, :edit, :update]
    resource :prices_page, only: [:show, :edit, :update]
  end

  ActiveAdmin.routes(self)

  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    root 'main#index'

    resources :pages, only: [], shallow: true do
      collection do
        get :about_us
        get :contacts
        get :news
        get :prices
        get :sitemap
      end
    end
  
    resources :user_callbacks, only: [:create]
  
    resources :services, only: :show do
      resources :articles, only: :show, shallow: true
    end
  
    resources :posts, only: [:show] do
      resources :comments, only: [:create]
    end
  end

  post 'upload_image', to: 'upload#upload_image'
end
