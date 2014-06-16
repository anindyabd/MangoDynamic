Rails.application.routes.draw do
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


end
