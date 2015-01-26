Rails.application.routes.draw do
 
  root to: 'users#index'

  get 'signup' => 'users#new', as: :signup 
  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: :logout

  put '/updateRating' => 'thaifoods#updateRating'

  resources :users
  resources :sessions
  resources :comments

  resources :thaifoods do 
  	resources :comments
  end 

end