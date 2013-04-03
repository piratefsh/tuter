Tuter::Application.routes.draw do

  devise_for :users

  root :to => "home#index"


  # Omniauth routes
  match '/users/auth/:provider/callback', to: 'sessions#create'
  match '/users/auth/failure', to: redirect('/')


  # User Signup Routes
  # match "/signup" => "signup#signup"
  # match "/login" =>"login#login"
  # match "/user" => "user#user"

  match "/search" => "search#index"
  match "/search/index" => "search#index"



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
#== Route Map
# Generated on 02 Apr 2013 20:06
#
#             user_session POST     /users/sign_in(.:format)                 devise/sessions#create
#     destroy_user_session DELETE   /users/sign_out(.:format)                devise/sessions#destroy
#  user_omniauth_authorize GET|POST /users/auth/:provider(.:format)          devise/omniauth_callbacks#passthru {:provider=>/(?!)/}
#   user_omniauth_callback GET|POST /users/auth/:action/callback(.:format)   devise/omniauth_callbacks#(?-mix:(?!))
#            user_password POST     /users/password(.:format)                devise/passwords#create
#        new_user_password GET      /users/password/new(.:format)            devise/passwords#new
#       edit_user_password GET      /users/password/edit(.:format)           devise/passwords#edit
#                          PUT      /users/password(.:format)                devise/passwords#update
# cancel_user_registration GET      /users/cancel(.:format)                  devise/registrations#cancel
#        user_registration POST     /users(.:format)                         devise/registrations#create
#    new_user_registration GET      /users/sign_up(.:format)                 devise/registrations#new
#   edit_user_registration GET      /users/edit(.:format)                    devise/registrations#edit
#                          PUT      /users(.:format)                         devise/registrations#update
#                          DELETE   /users(.:format)                         devise/registrations#destroy
#                     root          /                                        home#index
#                                   /users/auth/:provider/callback(.:format) sessions#create
#       users_auth_failure          /users/auth/failure(.:format)            :controller#:action
#                   search          /search(.:format)                        search#index
#             search_index          /search/index(.:format)                  search#index
