Rails.application.routes.draw do
  
  resources :routines
  # THIS LINE OF CODE IS THE INDEX OR HOME. i'M CALLING IT WELCOME
  root 'sessions#welcome' 

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :users
  
end
