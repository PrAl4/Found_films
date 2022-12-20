Rails.application.routes.draw do
  root 'articles#index'

  get '/articles', to: 'articles#index'
  post '/questions', to: 'questions#create'
end
