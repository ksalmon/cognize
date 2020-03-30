Rails.application.routes.draw do
  
  root to: 'application#index'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'


  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :update]
      resources :articles, only: [:index, :show]
    end
  end


end
