Rails.application.routes.draw do
  root "home#index"

  devise_for :admins, controllers: {
    registrations: "users/registrations",
  }
  
  authenticate :admin_user do
    root to: "admin#index", as: :admin_root
  end

  namespace :admin do
    resources :orders
    resources :categories 
      resources :products do 
        resources :stocks
      end
  end
  
  get "admin" => "admin#index"


end
