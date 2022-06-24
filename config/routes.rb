Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  
  root to: "homes#index"
  resources :homes do
    member do
      get :switch_role
    end
  end
end
    