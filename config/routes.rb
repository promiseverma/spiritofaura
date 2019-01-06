Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'visitors#index'
  get 'aboutus', action: :aboutus, controller: 'visitors'
  get 'contactus', action: :contactus, controller: 'visitors'
end
