Rails.application.routes.draw do
  
  # THIS LINE OF CODE IS THE INDEX OR HOME. i'M CALLING IT WELCOME
  root 'sessions#welcome' 

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  resources :users
  
end
