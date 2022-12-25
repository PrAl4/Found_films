Rails.application.routes.draw do
  root 'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'questions', to: 'questions#index'
  get 'signup'  => 'users#new'
  resources :users
  get 'favourites', to: 'favourites#index'

  
end
