Rails.application.routes.draw do
 
  get 'home/index'
 # get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  resources :user1s
resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get 'welcome',to: 'sessions#welcome', as: 'welcome'

  resources :user1s
  get 'book1/delete'
  get 'book1/update'
  
  get 'book1/list'
  get 'book1/show'
  get 'book1/new'

  get 'book1/edit'
  get 'book1/destroy'
  get 'home/about'




 #root 'first#welcome'
  root 'home#index'

  
  #get "/first", to: "first#welcome"

  #get 'display/hello'
   
  match ':controller(/:action(/:id(.:format)))',:via => [:get,:post]
  
  end
