Rails.application.routes.draw do

  resources :records
  root "static_pages#home"

  devise_for :users

  resource :user do
    resources :records
  end
  
  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
