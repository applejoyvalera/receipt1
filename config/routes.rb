Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "buyorders#index"
  resources :items
  resources :customers
  resources :buyorders
end
