Rails.application.routes.draw do
  
  get 'province_controller/index'

  get 'province_controller/show'

  get 'province_controller/new'

  get 'province_controller/create'

  get 'itemspurchased_controller/index'

  get 'itemspurchased_controller/show'

  get 'itemspurchased_controller/new'

  get 'itemspurchased_controller/create'

  get 'orders_controller/index'

  get 'orders_controller/show'

  get 'orders_controller/new'

  get 'orders_controller/create'

 # get 'customer_controller/index'

  get 'customer_controller/show'

  get 'customer_controller/new'

  get 'customer_controller/create'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root  to: 'items#index'
  
  get 'items' => 'items#index'
 
  get 'items/:id' => 'items#show' , as: 'item' , id: /\d+/
 
  get 'items/new' => 'items#new', as: 'new_item'  
  post 'items' => 'items#create', as: 'create_item'
  
  get 'items/:id/edit' => 'items#edit', as: 'edit_item', id: /\d+/
  patch 'items/:id' => 'items#update', id:/\d+/
  
  delete 'items/:id' => 'items#destroy', as: 'delete_item', id: /\d+/
  
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #root  to: 'customers#index'
  
  get 'customers' => 'customers#index'
 
  get 'customers/:id' => 'customers#show' , as: 'customer' , id: /\d+/
 
  get 'customers/new' => 'customers#new', as: 'new_customer'  
  post 'customers' => 'customers#create', as: 'create_customer'
  
  get 'customers/:id/edit' => 'customers#edit', as: 'edit_customer', id: /\d+/
  patch 'customers/:id' => 'customers#update', id:/\d+/
  
  delete 'customers/:id' => 'customers#destroy', as: 'delete_customer', id: /\d+/
  
  
  #devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root  to: 'orders#index'
  
  get 'orders' => 'orders#index'
 
  get 'orders/:id' => 'orders#show' , as: 'order' , id: /\d+/
 
  get 'orders/new' => 'orders#new', as: 'new_order'  
  post 'orders' => 'orders#create', as: 'create_order'
  
  get 'orders/:id/edit' => 'orders#edit', as: 'edit_order', id: /\d+/
  patch 'orders/:id' => 'orders#update', id:/\d+/
  
  delete 'orders/:id' => 'orders#destroy', as: 'delete_order', id: /\d+/
  
  #devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root  to: 'province#index'
  
  get 'province' => 'provinces#index'
 
  get 'provinces/:id' => 'provinces#show' , as: 'province' , id: /\d+/
 
  get 'provinces/new' => 'provinces#new', as: 'new_province'  
  post 'provinces' => 'provinces#create', as: 'create_province'
  
  get 'provinces/:id/edit' => 'provinces#edit', as: 'edit_province', id: /\d+/
  patch 'provinces/:id' => 'provinces#update', id:/\d+/
  
  delete 'provinces/:id' => 'provinces#destroy', as: 'delete_province', id: /\d+/
  #get 'items/:id' => 'items#show' ,constraints: {id: /\d+/}, as: 'item'
  
 # get 'items/index'

  #get 'items/show'

  #get 'items/new'

  #get 'items/create'

  #get 'items/edit'

  #get 'items/update'

  #get 'items/destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
