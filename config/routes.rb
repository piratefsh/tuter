Tuter::Application.routes.draw do  

  resources :reviews

  devise_for :users
  devise_scope :user do
    match "/users/sign_out" => "devise/sessions#destroy"
    match "/dashboard" => "dashboard#dashboard"
  end

  root :to => "home#index"

  # Android API routes
  namespace :api do
    namespace :v1 do
      devise_scope :user do
        post 'registrations' => 'registrations#create', :as => 'register'
        post 'sessions' => 'sessions#create', :as => 'login'
        delete 'sessions' => 'sessions#destroy', :as => 'logout'
      end
      get 'tasks' => 'tasks#index', :as => 'tasks'
    end
  end

  resources :groups do
    resources :student_ids
    resources :tutor_ids
    resources :courses
  end

  resources :user
  resources :locations
  resources :search
  resources :organizations
  resources :programs

  resources :tutor_watchlist do
    resources :user
  end

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

  resources :day_availabilities
  
  resources :week_availabilities do
    resources :day_availabilities
    resources :day_availability
  end

  resources :reviews
  
  # Omniauth routes
  match '/users/auth/:provider/callback', to: 'sessions#create'
  match '/users/auth/failure', to: redirect('/')


  # User Signup Routes
  match "/user" => "user#user"
  match "/dashboard" => "home#index"

  # Organization List Page
  match "/organizations" => "organizations#index"
  
  match '/update_watchlist' => 'tutor_watchlist#update' 
 
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
# Generated on 06 May 2013 02:00
#
#                                          POST   /reviews(.:format)                                                               reviews#create
#                               new_review GET    /reviews/new(.:format)                                                           reviews#new
#                              edit_review GET    /reviews/:id/edit(.:format)                                                      reviews#edit
#                                   review GET    /reviews/:id(.:format)                                                           reviews#show
#                                          PUT    /reviews/:id(.:format)                                                           reviews#update
#                                          DELETE /reviews/:id(.:format)                                                           reviews#destroy
#                         new_user_session GET    /users/sign_in(.:format)                                                         devise/sessions#new
#                             user_session POST   /users/sign_in(.:format)                                                         devise/sessions#create
#                     destroy_user_session DELETE /users/sign_out(.:format)                                                        devise/sessions#destroy
#                  user_omniauth_authorize        /users/auth/:provider(.:format)                                                  devise/omniauth_callbacks#passthru {:provider=>/(?!)/}
#                   user_omniauth_callback        /users/auth/:action/callback(.:format)                                           devise/omniauth_callbacks#(?-mix:(?!))
#                            user_password POST   /users/password(.:format)                                                        devise/passwords#create
#                        new_user_password GET    /users/password/new(.:format)                                                    devise/passwords#new
#                       edit_user_password GET    /users/password/edit(.:format)                                                   devise/passwords#edit
#                                          PUT    /users/password(.:format)                                                        devise/passwords#update
#                 cancel_user_registration GET    /users/cancel(.:format)                                                          devise/registrations#cancel
#                        user_registration POST   /users(.:format)                                                                 devise/registrations#create
#                    new_user_registration GET    /users/sign_up(.:format)                                                         devise/registrations#new
#                   edit_user_registration GET    /users/edit(.:format)                                                            devise/registrations#edit
#                                          PUT    /users(.:format)                                                                 devise/registrations#update
#                                          DELETE /users(.:format)                                                                 devise/registrations#destroy
#                           users_sign_out        /users/sign_out(.:format)                                                        devise/sessions#destroy
#                                dashboard        /dashboard(.:format)                                                             dashboard#dashboard
#                                     root        /                                                                                home#index
#                        group_student_ids GET    /groups/:group_id/student_ids(.:format)                                          student_ids#index
#                                          POST   /groups/:group_id/student_ids(.:format)                                          student_ids#create
#                     new_group_student_id GET    /groups/:group_id/student_ids/new(.:format)                                      student_ids#new
#                    edit_group_student_id GET    /groups/:group_id/student_ids/:id/edit(.:format)                                 student_ids#edit
#                         group_student_id GET    /groups/:group_id/student_ids/:id(.:format)                                      student_ids#show
#                                          PUT    /groups/:group_id/student_ids/:id(.:format)                                      student_ids#update
#                                          DELETE /groups/:group_id/student_ids/:id(.:format)                                      student_ids#destroy
#                          group_tutor_ids GET    /groups/:group_id/tutor_ids(.:format)                                            tutor_ids#index
#                                          POST   /groups/:group_id/tutor_ids(.:format)                                            tutor_ids#create
#                       new_group_tutor_id GET    /groups/:group_id/tutor_ids/new(.:format)                                        tutor_ids#new
#                      edit_group_tutor_id GET    /groups/:group_id/tutor_ids/:id/edit(.:format)                                   tutor_ids#edit
#                           group_tutor_id GET    /groups/:group_id/tutor_ids/:id(.:format)                                        tutor_ids#show
#                                          PUT    /groups/:group_id/tutor_ids/:id(.:format)                                        tutor_ids#update
#                                          DELETE /groups/:group_id/tutor_ids/:id(.:format)                                        tutor_ids#destroy
#                            group_courses GET    /groups/:group_id/courses(.:format)                                              courses#index
#                                          POST   /groups/:group_id/courses(.:format)                                              courses#create
#                         new_group_course GET    /groups/:group_id/courses/new(.:format)                                          courses#new
#                        edit_group_course GET    /groups/:group_id/courses/:id/edit(.:format)                                     courses#edit
#                             group_course GET    /groups/:group_id/courses/:id(.:format)                                          courses#show
#                                          PUT    /groups/:group_id/courses/:id(.:format)                                          courses#update
#                                          DELETE /groups/:group_id/courses/:id(.:format)                                          courses#destroy
#                                   groups GET    /groups(.:format)                                                                groups#index
#                                          POST   /groups(.:format)                                                                groups#create
#                                new_group GET    /groups/new(.:format)                                                            groups#new
#                               edit_group GET    /groups/:id/edit(.:format)                                                       groups#edit
#                                    group GET    /groups/:id(.:format)                                                            groups#show
#                                          PUT    /groups/:id(.:format)                                                            groups#update
#                                          DELETE /groups/:id(.:format)                                                            groups#destroy
#                               user_index GET    /user(.:format)                                                                  user#index
#                                          POST   /user(.:format)                                                                  user#create
#                                 new_user GET    /user/new(.:format)                                                              user#new
#                                edit_user GET    /user/:id/edit(.:format)                                                         user#edit
#                                     user GET    /user/:id(.:format)                                                              user#show
#                                          PUT    /user/:id(.:format)                                                              user#update
#                                          DELETE /user/:id(.:format)                                                              user#destroy
#                                locations GET    /locations(.:format)                                                             locations#index
#                                          POST   /locations(.:format)                                                             locations#create
#                             new_location GET    /locations/new(.:format)                                                         locations#new
#                            edit_location GET    /locations/:id/edit(.:format)                                                    locations#edit
#                                 location GET    /locations/:id(.:format)                                                         locations#show
#                                          PUT    /locations/:id(.:format)                                                         locations#update
#                                          DELETE /locations/:id(.:format)                                                         locations#destroy
#                             search_index GET    /search(.:format)                                                                search#index
#                                          POST   /search(.:format)                                                                search#create
#                               new_search GET    /search/new(.:format)                                                            search#new
#                              edit_search GET    /search/:id/edit(.:format)                                                       search#edit
#                                   search GET    /search/:id(.:format)                                                            search#show
#                                          PUT    /search/:id(.:format)                                                            search#update
#                                          DELETE /search/:id(.:format)                                                            search#destroy
#                       search_tutors_home GET    /home/:id/search_tutors(.:format)                                                home#search_tutors
#                               home_index GET    /home(.:format)                                                                  home#index
#                                          POST   /home(.:format)                                                                  home#create
#                                 new_home GET    /home/new(.:format)                                                              home#new
#                                edit_home GET    /home/:id/edit(.:format)                                                         home#edit
#                                     home GET    /home/:id(.:format)                                                              home#show
#                                          PUT    /home/:id(.:format)                                                              home#update
#                                          DELETE /home/:id(.:format)                                                              home#destroy
#             delete_group_dashboard_index POST   /dashboard/delete_group(.:format)                                                dashboard#delete_group
#                          dashboard_index GET    /dashboard(.:format)                                                             dashboard#index
#                                          POST   /dashboard(.:format)                                                             dashboard#create
#                            new_dashboard GET    /dashboard/new(.:format)                                                         dashboard#new
#                           edit_dashboard GET    /dashboard/:id/edit(.:format)                                                    dashboard#edit
#                                          GET    /dashboard/:id(.:format)                                                         dashboard#show
#                                          PUT    /dashboard/:id(.:format)                                                         dashboard#update
#                                          DELETE /dashboard/:id(.:format)                                                         dashboard#destroy
#                       day_availabilities GET    /day_availabilities(.:format)                                                    day_availabilities#index
#                                          POST   /day_availabilities(.:format)                                                    day_availabilities#create
#                     new_day_availability GET    /day_availabilities/new(.:format)                                                day_availabilities#new
#                    edit_day_availability GET    /day_availabilities/:id/edit(.:format)                                           day_availabilities#edit
#                         day_availability GET    /day_availabilities/:id(.:format)                                                day_availabilities#show
#                                          PUT    /day_availabilities/:id(.:format)                                                day_availabilities#update
#                                          DELETE /day_availabilities/:id(.:format)                                                day_availabilities#destroy
#     week_availability_day_availabilities GET    /week_availabilities/:week_availability_id/day_availabilities(.:format)          day_availabilities#index
#                                          POST   /week_availabilities/:week_availability_id/day_availabilities(.:format)          day_availabilities#create
#   new_week_availability_day_availability GET    /week_availabilities/:week_availability_id/day_availabilities/new(.:format)      day_availabilities#new
#  edit_week_availability_day_availability GET    /week_availabilities/:week_availability_id/day_availabilities/:id/edit(.:format) day_availabilities#edit
#       week_availability_day_availability GET    /week_availabilities/:week_availability_id/day_availabilities/:id(.:format)      day_availabilities#show
#                                          PUT    /week_availabilities/:week_availability_id/day_availabilities/:id(.:format)      day_availabilities#update
#                                          DELETE /week_availabilities/:week_availability_id/day_availabilities/:id(.:format)      day_availabilities#destroy
# week_availability_day_availability_index GET    /week_availabilities/:week_availability_id/day_availability(.:format)            day_availability#index
#                                          POST   /week_availabilities/:week_availability_id/day_availability(.:format)            day_availability#create
#                                          GET    /week_availabilities/:week_availability_id/day_availability/new(.:format)        day_availability#new
#                                          GET    /week_availabilities/:week_availability_id/day_availability/:id/edit(.:format)   day_availability#edit
#                                          GET    /week_availabilities/:week_availability_id/day_availability/:id(.:format)        day_availability#show
#                                          PUT    /week_availabilities/:week_availability_id/day_availability/:id(.:format)        day_availability#update
#                                          DELETE /week_availabilities/:week_availability_id/day_availability/:id(.:format)        day_availability#destroy
#                      week_availabilities GET    /week_availabilities(.:format)                                                   week_availabilities#index
#                                          POST   /week_availabilities(.:format)                                                   week_availabilities#create
#                    new_week_availability GET    /week_availabilities/new(.:format)                                               week_availabilities#new
#                   edit_week_availability GET    /week_availabilities/:id/edit(.:format)                                          week_availabilities#edit
#                        week_availability GET    /week_availabilities/:id(.:format)                                               week_availabilities#show
#                                          PUT    /week_availabilities/:id(.:format)                                               week_availabilities#update
#                                          DELETE /week_availabilities/:id(.:format)                                               week_availabilities#destroy
#                                          GET    /reviews(.:format)                                                               reviews#index
#                                          POST   /reviews(.:format)                                                               reviews#create
#                                          GET    /reviews/new(.:format)                                                           reviews#new
#                                          GET    /reviews/:id/edit(.:format)                                                      reviews#edit
#                                          GET    /reviews/:id(.:format)                                                           reviews#show
#                                          PUT    /reviews/:id(.:format)                                                           reviews#update
#                                          DELETE /reviews/:id(.:format)                                                           reviews#destroy
#                                                 /users/auth/:provider/callback(.:format)                                         sessions#create
#                       users_auth_failure        /users/auth/failure(.:format)                                                    :controller#:action
