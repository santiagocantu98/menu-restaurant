Rails.application.routes.draw do
  resources :products
  resources :pages
  resources :menus
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/api' do
  	resources :menus
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
