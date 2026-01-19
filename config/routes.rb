Rails.application.routes.draw do
  
  devise_for :users

  resources :todo_lists do
    resources :tasks do
      member do
        patch :complete
      end
    end
  end
  
  get "home/index"
 
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"
  
end
