Rails.application.routes.draw do
  
  

#root to: 'employees#index'
#get 'users/show/:id',to: "users#show" , as: 'user_show'
# post 'users/create', to: "users#create", as: 'user_create_path'
# get 'users/edit', to: 'users#edit', as: 'edit_user'
#resources :employees
  resources :employees
   root to: "sessions#welcome"
   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
   get 'welcome', to: 'sessions#welcome'
   get 'index', to: 'sessions#index'
   get 'create', to: 'employees#new'
   delete '/logout' => 'sessions#destroy'


end
