Rails.application.routes.draw do
  resources :todo_lists
  devise_for :users
  get "home/index"
 
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"
  
end
