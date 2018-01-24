# == Route Map
#
#         Prefix Verb   URI Pattern                     Controller#Action
#           root GET    /                               pages#home
#        budgets GET    /budgets(.:format)              budgets#index
#                POST   /budgets(.:format)              budgets#create
#     new_budget GET    /budgets/new(.:format)          budgets#new
#    edit_budget GET    /budgets/:id/edit(.:format)     budgets#edit
#         budget GET    /budgets/:id(.:format)          budgets#show
#                PATCH  /budgets/:id(.:format)          budgets#update
#                PUT    /budgets/:id(.:format)          budgets#update
#                DELETE /budgets/:id(.:format)          budgets#destroy
#         cities GET    /cities(.:format)               cities#index
#                POST   /cities(.:format)               cities#create
#       new_city GET    /cities/new(.:format)           cities#new
#      edit_city GET    /cities/:id/edit(.:format)      cities#edit
#           city GET    /cities/:id(.:format)           cities#show
#                PATCH  /cities/:id(.:format)           cities#update
#                PUT    /cities/:id(.:format)           cities#update
#                DELETE /cities/:id(.:format)           cities#destroy
#      countries GET    /countries(.:format)            countries#index
#                POST   /countries(.:format)            countries#create
#    new_country GET    /countries/new(.:format)        countries#new
#   edit_country GET    /countries/:id/edit(.:format)   countries#edit
#        country GET    /countries/:id(.:format)        countries#show
#                PATCH  /countries/:id(.:format)        countries#update
#                PUT    /countries/:id(.:format)        countries#update
#                DELETE /countries/:id(.:format)        countries#destroy
#    itineraries GET    /itineraries(.:format)          itineraries#index
#                POST   /itineraries(.:format)          itineraries#create
#  new_itinerary GET    /itineraries/new(.:format)      itineraries#new
# edit_itinerary GET    /itineraries/:id/edit(.:format) itineraries#edit
#      itinerary GET    /itineraries/:id(.:format)      itineraries#show
#                PATCH  /itineraries/:id(.:format)      itineraries#update
#                PUT    /itineraries/:id(.:format)      itineraries#update
#                DELETE /itineraries/:id(.:format)      itineraries#destroy
#          lists GET    /lists(.:format)                lists#index
#                POST   /lists(.:format)                lists#create
#       new_list GET    /lists/new(.:format)            lists#new
#      edit_list GET    /lists/:id/edit(.:format)       lists#edit
#           list GET    /lists/:id(.:format)            lists#show
#                PATCH  /lists/:id(.:format)            lists#update
#                PUT    /lists/:id(.:format)            lists#update
#                DELETE /lists/:id(.:format)            lists#destroy
#      locations GET    /locations(.:format)            locations#index
#                POST   /locations(.:format)            locations#create
#   new_location GET    /locations/new(.:format)        locations#new
#  edit_location GET    /locations/:id/edit(.:format)   locations#edit
#       location GET    /locations/:id(.:format)        locations#show
#                PATCH  /locations/:id(.:format)        locations#update
#                PUT    /locations/:id(.:format)        locations#update
#                DELETE /locations/:id(.:format)        locations#destroy
#          notes GET    /notes(.:format)                notes#index
#                POST   /notes(.:format)                notes#create
#       new_note GET    /notes/new(.:format)            notes#new
#      edit_note GET    /notes/:id/edit(.:format)       notes#edit
#           note GET    /notes/:id(.:format)            notes#show
#                PATCH  /notes/:id(.:format)            notes#update
#                PUT    /notes/:id(.:format)            notes#update
#                DELETE /notes/:id(.:format)            notes#destroy
#          users GET    /users(.:format)                users#index
#                POST   /users(.:format)                users#create
#       new_user GET    /users/new(.:format)            users#new
#      edit_user GET    /users/:id/edit(.:format)       users#edit
#           user GET    /users/:id(.:format)            users#show
#                PATCH  /users/:id(.:format)            users#update
#                PUT    /users/:id(.:format)            users#update
#                DELETE /users/:id(.:format)            users#destroy
#          tasks GET    /tasks(.:format)                tasks#index
#                POST   /tasks(.:format)                tasks#create
#       new_task GET    /tasks/new(.:format)            tasks#new
#      edit_task GET    /tasks/:id/edit(.:format)       tasks#edit
#           task GET    /tasks/:id(.:format)            tasks#show
#                PATCH  /tasks/:id(.:format)            tasks#update
#                PUT    /tasks/:id(.:format)            tasks#update
#                DELETE /tasks/:id(.:format)            tasks#destroy
#           days GET    /days(.:format)                 days#index
#                POST   /days(.:format)                 days#create
#        new_day GET    /days/new(.:format)             days#new
#       edit_day GET    /days/:id/edit(.:format)        days#edit
#            day GET    /days/:id(.:format)             days#show
#                PATCH  /days/:id(.:format)             days#update
#                PUT    /days/:id(.:format)             days#update
#                DELETE /days/:id(.:format)             days#destroy
#          login GET    /login(.:format)                sessions#new
#                POST   /login(.:format)                sessions#create
#                DELETE /login(.:format)                sessions#destroy
#

Rails.application.routes.draw do

  root :to => 'locations#index'

  resources :budgets
  resources :cities
  resources :countries
  resources :itineraries
  resources :lists
  resources :locations
  resources :notes
  resources :users
  resources :tasks
  resources :days

  get '/path/to/your/day/page', to: 'days#show', as: 'dayedit'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

end
