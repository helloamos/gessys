Rails.application.routes.draw do
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
  get "/users"     => "custom_users#index", as: :users 

  post "/users/new"     => "custom_users#create", as: :create_user
	get "/users/new"     => "custom_users#new", as: :new_user
	get "/user/edit/:id" => "custom_users#edit", as: :edit_user

	patch "/user/update/:id" => "custom_users#update", as: :udapte_user

	#get "/commissions/settings/new"     => "commission_settings#new", as: :new_commission_setting
	#get "/commissions/settings/edit/:id" => "commission_settings#edit", as: :edit_commission_setting

	delete "/user/destroy/:id" => "custom_users#destroy", as: :destroy_user
	
	delete "/credits/destroy/:id" => "credits#destroy", as: :destroy_credit
	get "/user/delete/:id" => "custom_users#delete", as: :delete_user


	get "/user/enable/:id" => "custom_users#get_enable", as: :get_enable_user_account
	post "/user/enable/:id" => "custom_users#post_enable", as: :post_enable_user_account

	get "/user/disable/:id" => "custom_users#get_disable", as: :get_disable_user_account
	post "/user/disable/:id" => "custom_users#post_disable", as: :post_disable_user_account

	get "/user/update/:id" => "custom_users#update", as: :update_user


	get "/user/show/:id" => "custom_users#show", as: :show_user

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

end
