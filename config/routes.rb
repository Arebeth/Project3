Rails.application.routes.draw do
  root 'access#home_page', as: 'home_page'
  get 'access/home_page'

  post '/access/login', to: "access#attempt_login", as: 'login'
  delete '/logout', to: 'access#logout', as: 'logout'

  get 'access/about'

  resources :users do
    resources :pets
  end


#           Prefix Verb   URI Pattern                             Controller#Action
#        home_page GET    /                                       access#home_page
# access_home_page GET    /access/home_page(.:format)             access#home_page
#            login POST   /access/login(.:format)                 access#attempt_login
#     access_about GET    /access/about(.:format)                 access#about
#        user_pets GET    /users/:user_id/pets(.:format)          pets#index
#                  POST   /users/:user_id/pets(.:format)          pets#create
#     new_user_pet GET    /users/:user_id/pets/new(.:format)      pets#new
#    edit_user_pet GET    /users/:user_id/pets/:id/edit(.:format) pets#edit
#         user_pet GET    /users/:user_id/pets/:id(.:format)      pets#show
#                  PATCH  /users/:user_id/pets/:id(.:format)      pets#update
#                  PUT    /users/:user_id/pets/:id(.:format)      pets#update
#                  DELETE /users/:user_id/pets/:id(.:format)      pets#destroy
#            users GET    /users(.:format)                        users#index
#                  POST   /users(.:format)                        users#create
#         new_user GET    /users/new(.:format)                    users#new
#        edit_user GET    /users/:id/edit(.:format)               users#edit
#             user GET    /users/:id(.:format)                    users#show
#                  PATCH  /users/:id(.:format)                    users#update
#                  PUT    /users/:id(.:format)                    users#update
#                  DELETE /users/:id(.:format)                    users#destroy
#           logout DELETE /logout(.:format)                       access#logout


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
