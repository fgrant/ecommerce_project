Rails.application.routes.draw do
  
  get 'store_controller/all_products'

  get 'store_controller/contact'

  get 'store_controller/about'

  get 'store_controller/cats'

  get 'store_controller/dogs'

  get 'store_controller/small_animals'

  get 'store_controller/birds'

  get 'store_controller/sale'

  get 'store_controller/new'

  get 'store_controller/updated'

  get 'category_controller/create'

  get 'category_controller/index'

  get 'category_controller/new'

  get 'category_controller/show'

  get 'province_controller/index'

  get 'province_controller/show'

  get 'province_controller/new'

  get 'province_controller/create'

  get 'items_purchased_controller/index'

  get 'items_purchased_controller/show'

  get 'items_purchased_controller/new'

  get 'items_purchased_controller/create'

  get 'orders_controller/index'

  get 'orders_controller/show'

  get 'orders_controller/new'

  get 'orders_controller/create'

  get 'customers_controller/index'

  get 'customers_controller/show'

  get 'customers_controller/new'

  get 'customers_controller/create'
 # get 'items/index'

  #get 'items/show'

  #get 'items/new'

  #get 'items/create'
 
#root to: 'store#index'
get 'cats', to: 'store#cats'
get 'dogs', to: 'store#dogs'
get 'birds', to: 'store#birds'
get 'small_animals', to: 'store#small_animals'
get 'sale', to: 'store#sale'
get 'new', to: 'store#new'

#search routes
match 'search_items' => 'store#search_items', :as => 'search_items', :via => :get
match 'found_items' => 'store#found_items', :as => 'found_items', :via => :post
match 'found_all_items' => 'store#found_all_items', :as => 'found_all_items', :via => :post

resources :items
 
 #routes for activeadmin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root  to: 'items#index'
  resources:items
    #routes for customers
  resource :items do
    get "index"
 #end
  
  get 'items' => 'items#index'
 
  get 'items/:id' => 'items#show' , as: 'item' , id: /\d+/
 
  get 'items/new' => 'items#new', as: 'new_item'  
 post 'items' => 'items#create', as: 'create_item'
  
  get 'items/:id/edit' => 'items#edit', as: 'edit_item', id: /\d+/
  patch 'items/:id' => 'items#update', id:/\d+/
  
  delete 'items/:id' => 'items#destroy', as: 'delete_item', id: /\d+/
  
  
  #resources :items, :except => :show
#root :to => "items#index", :via => :get
#match 'items/:id' => 'items#show', :as => 'item', :via => :get

#match 'search' => "items#search", :as => 'search', :via => :get
#match 'search_results' => 'items#search_results', :as => 'search_results', :via => :post  
  
  
  #routes for customers
  resource :customers do
    get "index"
  end
    
  get 'customers' => 'customers#index'
 
  get 'customers/:id' => 'customers#show' , as: 'customer' , id: /\d+/
 
  get 'customers/new' => 'customers#new', as: 'new_customer'  
  post 'customers' => 'customers#create', as: 'create_customer'
  
  get 'customers/:id/edit' => 'customers#edit', as: 'edit_customer', id: /\d+/
  patch 'customers/:id' => 'customers#update', id:/\d+/
  
  delete 'customers/:id' => 'customers#destroy', as: 'delete_customer', id: /\d+/
  
  
  
 
  
  #routes for orders
   resource :orders do
    get "index"
  end
  get 'orders' => 'orders#index'
 
  get 'orders/:id' => 'orders#show' , as: 'order' , id: /\d+/
 
  get 'orders/new' => 'orders#new', as: 'new_order'  
  post 'orders' => 'orders#create', as: 'create_order'
  
  get 'orders/:id/edit' => 'orders#edit', as: 'edit_order', id: /\d+/
  patch 'orders/:id' => 'orders#update', id:/\d+/
  
  delete 'orders/:id' => 'orders#destroy', as: 'delete_order', id: /\d+/
  
 
  
  
  #routes for provinces
  resource :provinces do
    get "index"
  end

  get 'provinces' => 'provinces#index'
 
  get 'provinces/:id' => 'provinces#show' , as: 'province' , id: /\d+/
 
  get 'provinces/new' => 'provinces#new', as: 'new_province'  
  post 'provinces' => 'provinces#create', as: 'create_province'
  
  get 'provinces/:id/edit' => 'provinces#edit', as: 'edit_province', id: /\d+/
  patch 'provinces/:id' => 'provinces#update', id:/\d+/
  
  delete 'provinces/:id' => 'provinces#destroy', as: 'delete_province', id: /\d+/
  
  

  
  
  #routes for items purchased
  #routes for category
  resource :items_purchased do
    get "index"
  end
  get 'items_purchased' => 'items_purchased#index'
 
  get 'items_purchased/:id' => 'items_purchased#show' , as: 'item_purchased' , id: /\d+/
  get 'items_purchased/new' => 'items_purchased#new', as: 'new_item_purchased'  

  post 'items_purchased' => 'items_purchased#create', as: 'create_item_purchased'
  
  get 'items_purchased/:id/edit' => 'items_purchased#edit', as: 'edit_item_purchased', id: /\d+/
  patch 'items_purchased/:id' => 'items_purchased#update', id:/\d+/
  
  delete 'items_purchased/:id' => 'items_purchased#destroy', as: 'delete_item_purchased', id: /\d+/
 
 
 
 
 
 
  #routes for category
  resource :categories do
    get "index"
  end
  get 'categories' => 'categories#index'
 
  get 'categories/:id' => 'categories#show' , as: 'category' , id: /\d+/
  get 'categories/new' => 'categories#new', as: 'new_category'  

  post 'categories' => 'categories#create', as: 'create_category'
  
  get 'categories/:id/edit' => 'categories#edit', as: 'edit_category', id: /\d+/
  patch 'categories/:id' => 'categories#update', id:/\d+/
  
  delete 'categories/:id' => 'categories#destroy', as: 'delete_category', id: /\d+/
  
  
  
  
  # get 'items/:id' => 'items#show' ,constraints: {id: /\d+/}, as: 'item'
  
 # get 'items/index'

  # get 'items/show'

  #get 'items/new'

  #get 'items/create'

  # get 'items/edit'

  # get 'items/update'

  # get 'items/destroy'

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
end