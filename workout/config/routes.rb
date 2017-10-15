Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :workouts
  root 'workouts#index'
  post '/workouts' => 'workouts#create', as: 'create_workout'
  get '/workouts/category/:category' => 'workouts#category', as: 'category'
  patch '/workouts/:id' => 'workouts#update', as: 'patch_workout'
end
