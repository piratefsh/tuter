Tuter::Application.routes.draw do  

  devise_for :users
  devise_scope :user do
    match "/users/sign_out" => "devise/sessions#destroy"
    match "/dashboard" => "dashboard#dashboard"
  end

  root :to => "home#index"

  resources :groups do
    resources :student_ids
    resources :tutor_ids
    resources :courses
  end

  resources :user
  resources :locations
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
  resources :day_availability
  resources :week_availabilities
  resources :week_availability do
    resources :day_availabilities
  end
  # Omniauth routes
  match '/users/auth/:provider/callback', to: 'sessions#create'
  match '/users/auth/failure', to: redirect('/')
 
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
 
  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

#== Route Map
# Generated on 23 Apr 2013 22:12
#
#                 user_session POST   /users/sign_in(.:format)                 devise/sessions#create
#         destroy_user_session DELETE /users/sign_out(.:format)                devise/sessions#destroy
#      user_omniauth_authorize        /users/auth/:provider(.:format)          devise/omniauth_callbacks#passthru {:provider=>/(?!)/}
#       user_omniauth_callback        /users/auth/:action/callback(.:format)   devise/omniauth_callbacks#(?-mix:(?!))
#                user_password POST   /users/password(.:format)                devise/passwords#create
#            new_user_password GET    /users/password/new(.:format)            devise/passwords#new
#           edit_user_password GET    /users/password/edit(.:format)           devise/passwords#edit
#                              PUT    /users/password(.:format)                devise/passwords#update
#     cancel_user_registration GET    /users/cancel(.:format)                  devise/registrations#cancel
#            user_registration POST   /users(.:format)                         devise/registrations#create
#        new_user_registration GET    /users/sign_up(.:format)                 devise/registrations#new
#       edit_user_registration GET    /users/edit(.:format)                    devise/registrations#edit
#                              PUT    /users(.:format)                         devise/registrations#update
#                              DELETE /users(.:format)                         devise/registrations#destroy
#               users_sign_out        /users/sign_out(.:format)                devise/sessions#destroy
#                    dashboard        /dashboard(.:format)                     dashboard#dashboard
#                         root        /                                        home#index
#                    locations GET    /locations(.:format)                     locations#index
#                              POST   /locations(.:format)                     locations#create
#                 new_location GET    /locations/new(.:format)                 locations#new
#                edit_location GET    /locations/:id/edit(.:format)            locations#edit
#                     location GET    /locations/:id(.:format)                 locations#show
#                              PUT    /locations/:id(.:format)                 locations#update
#                              DELETE /locations/:id(.:format)                 locations#destroy
#                       groups GET    /groups(.:format)                        groups#index
#                              POST   /groups(.:format)                        groups#create
#                    new_group GET    /groups/new(.:format)                    groups#new
#                   edit_group GET    /groups/:id/edit(.:format)               groups#edit
#                        group GET    /groups/:id(.:format)                    groups#show
#                              PUT    /groups/:id(.:format)                    groups#update
#                              DELETE /groups/:id(.:format)                    groups#destroy
#                 search_index GET    /search(.:format)                        search#index
#                              POST   /search(.:format)                        search#create
#                   new_search GET    /search/new(.:format)                    search#new
#                  edit_search GET    /search/:id/edit(.:format)               search#edit
#                       search GET    /search/:id(.:format)                    search#show
#                              PUT    /search/:id(.:format)                    search#update
#                              DELETE /search/:id(.:format)                    search#destroy
#           search_tutors_home GET    /home/:id/search_tutors(.:format)        home#search_tutors
#                   home_index GET    /home(.:format)                          home#index
#                              POST   /home(.:format)                          home#create
#                     new_home GET    /home/new(.:format)                      home#new
#                    edit_home GET    /home/:id/edit(.:format)                 home#edit
#                         home GET    /home/:id(.:format)                      home#show
#                              PUT    /home/:id(.:format)                      home#update
#                              DELETE /home/:id(.:format)                      home#destroy
# delete_group_dashboard_index POST   /dashboard/delete_group(.:format)        dashboard#delete_group
#              dashboard_index GET    /dashboard(.:format)                     dashboard#index
#                              POST   /dashboard(.:format)                     dashboard#create
#                new_dashboard GET    /dashboard/new(.:format)                 dashboard#new
#               edit_dashboard GET    /dashboard/:id/edit(.:format)            dashboard#edit
#                              GET    /dashboard/:id(.:format)                 dashboard#show
#                              PUT    /dashboard/:id(.:format)                 dashboard#update
#                              DELETE /dashboard/:id(.:format)                 dashboard#destroy
#                                     /users/auth/:provider/callback(.:format) sessions#create
#           users_auth_failure        /users/auth/failure(.:format)            :controller#:action
#                         user        /user(.:format)                          user#user
#                                     /dashboard(.:format)                     home#index
