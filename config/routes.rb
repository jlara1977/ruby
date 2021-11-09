Rails.application.routes.draw do
  scope path: '/api' do
    api_version(module: 'Api::V1', path: { value: 'v1' }, defaults: { format: 'json' }) do
      resources :reservation_requests, only: [:create]
      resources :car_model_requests, only: [:create]
    end
  end
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => '/api-docs'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  mount Sidekiq::Web => '/queue'

  resources :cars, only: [:index]
  resources :models, only: [:show]
  get 'frequent_questions' => 'frequent_questions#index'
  root 'landing#index'
end
