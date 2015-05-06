Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
    get '/' => 'admin#index'
    resources :inventory
    resources :member
    resources :order
    resources :category
  end

  namespace :user do
    get '/' => 'user#index'
    get '/order' => 'user#order'

    get '/cart' => 'user#cart'
    delete '/cart/:id(.:format)' => 'user#cart_destroy'
    get '/payment' => 'user#payment'
    post '/submit' => 'user#submit'
    resources :address 
  end

  namespace :registration do
    get '/' => 'registration#index'
    post '/' => 'registration#create'
    get '/success' => 'registration#success'
  end

  namespace :login do
    get '/' => 'login#index'
    post '/' => 'login#authenticate'
  end

  namespace :search do
    post '/' => 'search#search'
  end

  namespace :category do
    get '/:cat_name' => 'category#show'
  end

  namespace :book do
    get '/:id' => 'book#getbook'
    post '/:id/add' => 'book#add_to_cart'
  end

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
