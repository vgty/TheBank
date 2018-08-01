Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  root to: "pages#home"
  
  namespace :api, subdomain: 'api' do  
    resources :users, only: [:index] do
      resources :accounts, only: [:index]
      resources :saving_accounts, only: [:index]
    end
  end  
  
  devise_for :users
  resources :users do
    resources :accounts
    resources :saving_accounts
  end

end
