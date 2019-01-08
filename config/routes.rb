Rails.application.routes.draw do
<<<<<<< HEAD
  resources :stock_movement_details
  resources :stock_movements
  resources :movement_types
  resources :purchase_order_details
  resources :purchase_orders
  resources :order_details
  resources :orders
  resources :products
  resources :deposits
  resources :unities
  resources :product_categories
  resources :product_types
  resources :delivery_men
  resources :providers
  resources :role_permissions
  resources :permissions
  resources :user_roles
  resources :roles
  resources :customer_types
  resources :companies
  resources :customers

  get "/dashboard" => "dashboard#index" , as: :dashboard
	#get "/customers" => "customers#index", as: :customers_index
  #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, path: '', controllers: { 
    registrations: "users/registrations",
    confirmations: 'users/confirmations',
    passwords: "users/passwords",
    sessions: "users/sessions"
        
    }, 
    path_names: {
        sign_in: 'login', 
        sign_out: 'logout', 
        password: 'secret', 
        confirmation: 'verification', 
        unlock: 'unblock', 
        registration: 'signup', 
        sign_up: '' 
    }
   
  #root 'config_options#new'
  devise_scope :user do
    root to: "users/sessions#new"
    authenticated :user do
      root 'dashboard#index', as: :authenticated_root
    end

    unauthenticated do
      root 'users/sessions#new', as: :unauthenticated_root
    end
  end

  %w( 404 422 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end

=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> 48238445d4ca67f96f5805c6a30dee3fcf930c08
end
