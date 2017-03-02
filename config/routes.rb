Rails.application.routes.draw do

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

  get '/' => 'decks#index'
  
  get '/register' => 'users#new'

  post '/users' => 'users#create'

end
