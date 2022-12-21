Rails.application.routes.draw do
  root 'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'signup'  => 'users#new'
  resources :users
  get 'list_favourites' => 'favourites#list_favourites'
  post '/questions', to: 'questions#create'
  

  
end
