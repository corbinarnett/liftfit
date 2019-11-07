Rails.application.routes.draw do
  resources :exercises
  root "sessions#index"

  #creating a new session, model object(user) has already been created
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  #creating a new model opject so we send the route to the users contoller
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  
  resources :workouts
  resources :workout_sessions
  resources :plans
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
