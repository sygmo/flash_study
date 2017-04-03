Rails.application.routes.draw do

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'
  
  get '/register' => 'users#new'

  post '/users' => 'users#create'

  get '/' => 'decks#index'

  get '/new_deck' => 'decks#new'

  post '/decks' => 'decks#create'

end
