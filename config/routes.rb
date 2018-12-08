# frozen_string_literal: true

Rails.application.routes.draw do
  resources :situations
  resources :plants
  devise_for :users, path_prefix: :devise

  root to: redirect('/dashboards'), as: :root

  resources :dashboards, only: :index

  resources :summernote_images, only: :create

  get '/search_address/:cep', to: 'search_address#new', as: :search_address

  namespace :api do
    resources :data, only: :create
  end
end
