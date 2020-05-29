Rails.application.routes.draw do

  resources :media_files
  resources :suggestions
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/api' do
  	resources :menus
  	resources :products
  	resources :sections
  	resources :waiters
  	resources :suggestions
  	resources :califications
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
