Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'questions', to: 'questions#index'
  get 'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get 'logout'  => 'sessions#destroy'
  resources :users
  get 'favourites', to: 'favourites#index'
    ## favorites routes
  resources :favorites, only: [:index, :create, :destroy]
  get 'show_table_film', to: 'static_pages#show_table_film'
  
end
