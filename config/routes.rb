Rails.application.routes.draw do
  resources :analytics_by_weeks

  resources :orders
  resources "contacts", only: [:new, :create]
  devise_for :users
  resources :campaign_items
  resources :durations
  #resources :campaigns
  resources :line_items
  resources :carts
  get 'store/index'
  resources :products

  root 'static_pages#home'
  match '/about', to: 'static_pages#about', via:'get'
  match '/team',  to: 'static_pages#team',  via:'get'
  match '/purchase', to: 'purchases#purchase', via:'get'
  match '/store', to: 'store#index', via:'get'
  match '/contacts', to: 'contacts#new', via: 'get'
  match '/contacts', to: 'contacts#create', via: 'post'
  match '/profile', to: 'profiles#index', via: 'get'


end
