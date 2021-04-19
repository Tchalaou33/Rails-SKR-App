Rails.application.routes.draw do
  

  root 'sessions#welcome' 

  resources :reviews do
   resources :routines 
  end

  resources :routines
  
  resources :products do
    resources :routines, only: [:new, :create, :index]
  end


  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :users, only: [:show, :edit, :update, :create]
  
  get '/auth/:provider/callback' => 'sessions#omniauth'
 
  
end
