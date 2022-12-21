Rails.application.routes.draw do
  root 'start_page#index' 

  get 'list_favourites' => 'favourites#list_favourites'
  post '/questions', to: 'questions#create'

  
end
