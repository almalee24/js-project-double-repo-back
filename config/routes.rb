Rails.application.routes.draw do
  resources :contacts do 
    resources :connections
  end
  resources :contacts
  resources :positions
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
