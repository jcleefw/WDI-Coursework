Rails.application.routes.draw do
                      #this will generate everything except show
  resources :dishes

  resources :tags
  resources :users
             #controller #action
  get '/' => 'dishes#index', :as => :root
  get '/about' => 'pages#about'

  # /session/new login form
  get '/login' => 'session#new'

  # /session - logout
  delete '/logout' => 'session#destroy'

  # / session - after submit form for login
  post '/login' => 'session#create'

  # # get show form
  # get '/dishes/new' => 'dishes#new'

  # # post form - create
  # post '/dishes' => 'dishes#create'

  # # delete
  # delete '/dishes/:id' => 'dishes#destroy'

  # # get show edit form
  # get '/dishes/:id/edit' => 'dishes#edit'

  # # put form - update
  # put '/dishes/:id' => 'dishes#update'

  # # get show single dish
  # get '/dishes/index' => 'pages#index'

  # # get list all dish

end
