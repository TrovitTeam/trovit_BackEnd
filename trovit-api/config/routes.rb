# == Route Map
#
#                 Prefix Verb   URI Pattern                                     Controller#Action
#      user_distributors GET    /users/:user_id/distributors(.:format)          distributors#index
#                        POST   /users/:user_id/distributors(.:format)          distributors#create
#       user_distributor GET    /users/:user_id/distributors/:id(.:format)      distributors#show
#                        PATCH  /users/:user_id/distributors/:id(.:format)      distributors#update
#                        PUT    /users/:user_id/distributors/:id(.:format)      distributors#update
#                        DELETE /users/:user_id/distributors/:id(.:format)      distributors#destroy
# user_business_managers GET    /users/:user_id/business_managers(.:format)     business_managers#index
#                        POST   /users/:user_id/business_managers(.:format)     business_managers#create
#  user_business_manager GET    /users/:user_id/business_managers/:id(.:format) business_managers#show
#                        PATCH  /users/:user_id/business_managers/:id(.:format) business_managers#update
#                        PUT    /users/:user_id/business_managers/:id(.:format) business_managers#update
#                        DELETE /users/:user_id/business_managers/:id(.:format) business_managers#destroy
#                  users GET    /users(.:format)                                users#index
#                        POST   /users(.:format)                                users#create
#                   user GET    /users/:id(.:format)                            users#show
#                        PATCH  /users/:id(.:format)                            users#update
#                        PUT    /users/:id(.:format)                            users#update
#                        DELETE /users/:id(.:format)                            users#destroy
#              companies GET    /companies(.:format)                            companies#index
#                        POST   /companies(.:format)                            companies#create
#                company GET    /companies/:id(.:format)                        companies#show
#                        PATCH  /companies/:id(.:format)                        companies#update
#                        PUT    /companies/:id(.:format)                        companies#update
#                        DELETE /companies/:id(.:format)                        companies#destroy
#               products GET    /products(.:format)                             products#index
#                        POST   /products(.:format)                             products#create
#                product GET    /products/:id(.:format)                         products#show
#                        PATCH  /products/:id(.:format)                         products#update
#                        PUT    /products/:id(.:format)                         products#update
#                        DELETE /products/:id(.:format)                         products#destroy
#                 offers GET    /offers(.:format)                               offers#index
#                        POST   /offers(.:format)                               offers#create
#                  offer GET    /offers/:id(.:format)                           offers#show
#                        PATCH  /offers/:id(.:format)                           offers#update
#                        PUT    /offers/:id(.:format)                           offers#update
#                        DELETE /offers/:id(.:format)                           offers#destroy
#                 orders GET    /orders(.:format)                               orders#index
#                        POST   /orders(.:format)                               orders#create
#                  order GET    /orders/:id(.:format)                           orders#show
#                        PATCH  /orders/:id(.:format)                           orders#update
#                        PUT    /orders/:id(.:format)                           orders#update
#                        DELETE /orders/:id(.:format)                           orders#destroy

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :distributors
    resources :business_managers
  end
  resources :companies
  resources :products
  resources :offers
  resources :orders

end
