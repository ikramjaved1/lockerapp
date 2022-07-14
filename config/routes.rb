Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  
  devise_for :users

  root to: "homes#index"
  resources :products do
   resources :comments
  end

  resources :homes do
    member do
      get :switch_role
      get :profile
    end
  end

  resources :cart_items do
    collection do
      post  :update_quantity
    end
  end

  post 'cart_items/:id/add' => "cart_items#add_quantity", as: "cart_item_add"
  post 'cart_items/:id/reduce' => "cart_items#reduce_quantity", as: "cart_item_reduce"

end


    