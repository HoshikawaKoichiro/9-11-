Rails.application.routes.draw do
  devise_for :admins, controllers: { sessions: 'admins/sessions' }
  
  namespace :admin do
    root to: 'products#index'
    resources :products
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
