# == Route Map
#
#                         Prefix Verb   URI Pattern                                                               Controller#Action
#                     user_token POST   /user_token(.:format)                                                     user_token#create
#                           root GET    /                                                                         home#index
#                           auth GET    /auth(.:format)                                                           home#auth
#                                GET    /distributors/:id/messages2(.:format)                                     distributors#getMessages
#                                GET    /business_managers/:id/messages2(.:format)                                business_managers#getMessages
#                                GET    /companies/:id/employees(.:format)                                        companies#employees
#                                GET    /messages/:id/offers(.:format)                                            messages#offers
#                                GET    /messages/:id/orders(.:format)                                            messages#orders
#             users_distributors GET    /users/distributors(.:format)                                             users#getDistributors
#        users_business_managers GET    /users/business_managers(.:format)                                        users#getBusinessManagers
#           distributor_pictures GET    /distributors/:distributor_id/pictures(.:format)                          pictures#index
#                                POST   /distributors/:distributor_id/pictures(.:format)                          pictures#create
#            distributor_picture GET    /distributors/:distributor_id/pictures/:id(.:format)                      pictures#show
#                                PATCH  /distributors/:distributor_id/pictures/:id(.:format)                      pictures#update
#                                PUT    /distributors/:distributor_id/pictures/:id(.:format)                      pictures#update
#                                DELETE /distributors/:distributor_id/pictures/:id(.:format)                      pictures#destroy
#   distributor_product_pictures GET    /distributors/:distributor_id/products/:product_id/pictures(.:format)     pictures#index
#                                POST   /distributors/:distributor_id/products/:product_id/pictures(.:format)     pictures#create
#    distributor_product_picture GET    /distributors/:distributor_id/products/:product_id/pictures/:id(.:format) pictures#show
#                                PATCH  /distributors/:distributor_id/products/:product_id/pictures/:id(.:format) pictures#update
#                                PUT    /distributors/:distributor_id/products/:product_id/pictures/:id(.:format) pictures#update
#                                DELETE /distributors/:distributor_id/products/:product_id/pictures/:id(.:format) pictures#destroy
#           distributor_products GET    /distributors/:distributor_id/products(.:format)                          products#index
#                                POST   /distributors/:distributor_id/products(.:format)                          products#create
#            distributor_product GET    /distributors/:distributor_id/products/:id(.:format)                      products#show
#                                PATCH  /distributors/:distributor_id/products/:id(.:format)                      products#update
#                                PUT    /distributors/:distributor_id/products/:id(.:format)                      products#update
#                                DELETE /distributors/:distributor_id/products/:id(.:format)                      products#destroy
#             distributor_offers GET    /distributors/:distributor_id/offers(.:format)                            offers#index
#                                POST   /distributors/:distributor_id/offers(.:format)                            offers#create
#              distributor_offer GET    /distributors/:distributor_id/offers/:id(.:format)                        offers#show
#                                PATCH  /distributors/:distributor_id/offers/:id(.:format)                        offers#update
#                                PUT    /distributors/:distributor_id/offers/:id(.:format)                        offers#update
#                                DELETE /distributors/:distributor_id/offers/:id(.:format)                        offers#destroy
#             distributor_orders GET    /distributors/:distributor_id/orders(.:format)                            orders#index
#                                POST   /distributors/:distributor_id/orders(.:format)                            orders#create
#              distributor_order GET    /distributors/:distributor_id/orders/:id(.:format)                        orders#show
#                                PATCH  /distributors/:distributor_id/orders/:id(.:format)                        orders#update
#                                PUT    /distributors/:distributor_id/orders/:id(.:format)                        orders#update
#                                DELETE /distributors/:distributor_id/orders/:id(.:format)                        orders#destroy
#           distributor_messages GET    /distributors/:distributor_id/messages(.:format)                          messages#index
#                                POST   /distributors/:distributor_id/messages(.:format)                          messages#create
#            distributor_message GET    /distributors/:distributor_id/messages/:id(.:format)                      messages#show
#                                PATCH  /distributors/:distributor_id/messages/:id(.:format)                      messages#update
#                                PUT    /distributors/:distributor_id/messages/:id(.:format)                      messages#update
#                                DELETE /distributors/:distributor_id/messages/:id(.:format)                      messages#destroy
#                   distributors GET    /distributors(.:format)                                                   distributors#index
#                                POST   /distributors(.:format)                                                   distributors#create
#                    distributor GET    /distributors/:id(.:format)                                               distributors#show
#                                PATCH  /distributors/:id(.:format)                                               distributors#update
#                                PUT    /distributors/:id(.:format)                                               distributors#update
#                                DELETE /distributors/:id(.:format)                                               distributors#destroy
#      business_manager_pictures GET    /business_managers/:business_manager_id/pictures(.:format)                pictures#index
#                                POST   /business_managers/:business_manager_id/pictures(.:format)                pictures#create
#       business_manager_picture GET    /business_managers/:business_manager_id/pictures/:id(.:format)            pictures#show
#                                PATCH  /business_managers/:business_manager_id/pictures/:id(.:format)            pictures#update
#                                PUT    /business_managers/:business_manager_id/pictures/:id(.:format)            pictures#update
#                                DELETE /business_managers/:business_manager_id/pictures/:id(.:format)            pictures#destroy
#        business_manager_offers GET    /business_managers/:business_manager_id/offers(.:format)                  offers#index
#                                POST   /business_managers/:business_manager_id/offers(.:format)                  offers#create
#         business_manager_offer GET    /business_managers/:business_manager_id/offers/:id(.:format)              offers#show
#                                PATCH  /business_managers/:business_manager_id/offers/:id(.:format)              offers#update
#                                PUT    /business_managers/:business_manager_id/offers/:id(.:format)              offers#update
#                                DELETE /business_managers/:business_manager_id/offers/:id(.:format)              offers#destroy
#        business_manager_orders GET    /business_managers/:business_manager_id/orders(.:format)                  orders#index
#                                POST   /business_managers/:business_manager_id/orders(.:format)                  orders#create
#         business_manager_order GET    /business_managers/:business_manager_id/orders/:id(.:format)              orders#show
#                                PATCH  /business_managers/:business_manager_id/orders/:id(.:format)              orders#update
#                                PUT    /business_managers/:business_manager_id/orders/:id(.:format)              orders#update
#                                DELETE /business_managers/:business_manager_id/orders/:id(.:format)              orders#destroy
#      business_manager_messages GET    /business_managers/:business_manager_id/messages(.:format)                messages#index
#                                POST   /business_managers/:business_manager_id/messages(.:format)                messages#create
#       business_manager_message GET    /business_managers/:business_manager_id/messages/:id(.:format)            messages#show
#                                PATCH  /business_managers/:business_manager_id/messages/:id(.:format)            messages#update
#                                PUT    /business_managers/:business_manager_id/messages/:id(.:format)            messages#update
#                                DELETE /business_managers/:business_manager_id/messages/:id(.:format)            messages#destroy
#              business_managers GET    /business_managers(.:format)                                              business_managers#index
#                                POST   /business_managers(.:format)                                              business_managers#create
#               business_manager GET    /business_managers/:id(.:format)                                          business_managers#show
#                                PATCH  /business_managers/:id(.:format)                                          business_managers#update
#                                PUT    /business_managers/:id(.:format)                                          business_managers#update
#                                DELETE /business_managers/:id(.:format)                                          business_managers#destroy
# company_business_manager_index GET    /companies/:company_id/business_manager(.:format)                         business_manager#index
#                                POST   /companies/:company_id/business_manager(.:format)                         business_manager#create
#       company_business_manager GET    /companies/:company_id/business_manager/:id(.:format)                     business_manager#show
#                                PATCH  /companies/:company_id/business_manager/:id(.:format)                     business_manager#update
#                                PUT    /companies/:company_id/business_manager/:id(.:format)                     business_manager#update
#                                DELETE /companies/:company_id/business_manager/:id(.:format)                     business_manager#destroy
#                      companies GET    /companies(.:format)                                                      companies#index
#                                POST   /companies(.:format)                                                      companies#create
#                        company GET    /companies/:id(.:format)                                                  companies#show
#                                PATCH  /companies/:id(.:format)                                                  companies#update
#                                PUT    /companies/:id(.:format)                                                  companies#update
#                                DELETE /companies/:id(.:format)                                                  companies#destroy
#                          users GET    /users(.:format)                                                          users#index
#                                POST   /users(.:format)                                                          users#create
#                           user GET    /users/:id(.:format)                                                      users#show
#                                PATCH  /users/:id(.:format)                                                      users#update
#                                PUT    /users/:id(.:format)                                                      users#update
#                                DELETE /users/:id(.:format)                                                      users#destroy
#                       products GET    /products(.:format)                                                       products#index
#                                POST   /products(.:format)                                                       products#create
#                        product GET    /products/:id(.:format)                                                   products#show
#                                PATCH  /products/:id(.:format)                                                   products#update
#                                PUT    /products/:id(.:format)                                                   products#update
#                                DELETE /products/:id(.:format)                                                   products#destroy

Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'home#index'
  get 'auth' => 'home#auth'


  get 'distributors/:id/messages2' => 'distributors#getMessages'
  get 'business_managers/:id/messages2' => 'business_managers#getMessages'
  get 'companies/:id/employees' => 'companies#employees'
  get 'messages/:id/offers' => 'messages#offers'
  get 'messages/:id/orders' => 'messages#orders'
  get 'users/distributors' => 'users#getDistributors'
  get 'users/business_managers' => 'users#getBusinessManagers'
  
  resources :orders


  resources :distributors do 
    resources :pictures
    resources :products do
      resources :pictures
    end
    resources :offers
    resources :orders
    resources :messages
  end
  
  resources :business_managers do
    resources :pictures
    resources :offers
    resources :orders
    resources :messages
  end

  resources :companies do 
    resources :business_manager
  end

  resources :users
  resources :products

end
