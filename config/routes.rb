Rails.application.routes.draw do
  
  resources :reviews
  resources :products
  resources :routines

  # THIS LINE OF CODE IS THE INDEX OR HOME. i'M CALLING IT WELCOME
  root 'sessions#welcome' 

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :users
  
  post '/auth/provider/callback' => 'sessions#omniauth'
 

  resources :products do
    resources :routines, only: [:new, :create, :index]
  end
  
end
