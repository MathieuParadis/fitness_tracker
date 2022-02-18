Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root :to => "activities#index"
  end

  root "static_pages#home"

  resource :user do
    resources :records
  end
  
  resources :activities, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
