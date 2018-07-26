Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  root to: "pages#home"
  
  devise_for :users
  resources :users do
    resources :accounts
  end

end
