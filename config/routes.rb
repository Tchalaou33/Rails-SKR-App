Rails.application.routes.draw do
  
   # THIS LINE OF CODE IS THE INDEX OR HOME. i'M CALLING IT WELCOME
  root 'sessions#welcome' 

  resources :reviews
  resources :routines, except: [:index]
  resources :products do
    resources :routines, only: [:new, :create, :index]
  end


  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :users
  
  post '/auth/provider/callback' => 'sessions#omniauth'
 
  
end
