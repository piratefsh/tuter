Tuter::Application.routes.draw do

  devise_for :users
  devise_scope :user do
    match "/users/sign_out" => "devise/sessions#destroy"
    match "/dashboard" => "dashboard#dashboard"
  end

  root :to => "home#index"

  resources :users
  resources :locations
  resources :groups
  resources :search

  resources :home do
    member do 
      get 'search_tutors'
    end
  end

  resources :dashboard do
    collection do 
      post 'delete_group'
    end 
  end

  # Omniauth routes
  match '/users/auth/:provider/callback', to: 'sessions#create'
  match '/users/auth/failure', to: redirect('/')

  # User Signup Routes
  match "/user" => "user#user"
  match "/dashboard" => "home#index"
  


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
# Generated on 09 Apr 2013 19:37
#
#             user_session POST   /users/sign_in(.:format)                 devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                devise/sessions#destroy
#  user_omniauth_authorize        /users/auth/:provider(.:format)          devise/omniauth_callbacks#passthru {:provider=>/(?!)/}
#   user_omniauth_callback        /users/auth/:action/callback(.:format)   devise/omniauth_callbacks#(?-mix:(?!))
#            user_password POST   /users/password(.:format)                devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)            devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)           devise/passwords#edit
#                          PUT    /users/password(.:format)                devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                  devise/registrations#cancel
#        user_registration POST   /users(.:format)                         devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                 devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                    devise/registrations#edit
#                          PUT    /users(.:format)                         devise/registrations#update
#                          DELETE /users(.:format)                         devise/registrations#destroy
#           users_sign_out        /users/sign_out(.:format)                devise/sessions#destroy
#                     root        /                                        home#index
#                locations GET    /locations(.:format)                     locations#index
#                          POST   /locations(.:format)                     locations#create
#             new_location GET    /locations/new(.:format)                 locations#new
#            edit_location GET    /locations/:id/edit(.:format)            locations#edit
#                 location GET    /locations/:id(.:format)                 locations#show
#                          PUT    /locations/:id(.:format)                 locations#update
#                          DELETE /locations/:id(.:format)                 locations#destroy
#                   groups GET    /groups(.:format)                        groups#index
#                          POST   /groups(.:format)                        groups#create
#                new_group GET    /groups/new(.:format)                    groups#new
#               edit_group GET    /groups/:id/edit(.:format)               groups#edit
#                    group GET    /groups/:id(.:format)                    groups#show
#                          PUT    /groups/:id(.:format)                    groups#update
#                          DELETE /groups/:id(.:format)                    groups#destroy
#                                 /users/auth/:provider/callback(.:format) sessions#create
#       users_auth_failure        /users/auth/failure(.:format)            :controller#:action
#                     user        /user(.:format)                          user#user
#                   search        /search(.:format)                        search#index
#             search_index        /search/index(.:format)                  search#index