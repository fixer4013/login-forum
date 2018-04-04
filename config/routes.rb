Rails.application.routes.draw do
  root   'sessions#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
  
  get '/protected', to: 'protected#welcome'

  get '/register', to: 'register#new'
  post '/register', to: 'register#create'

  get '/withdraw', to: 'withdraw#new'
  post '/withdraw', to: 'withdraw#amount'

  get '/deposit', to: 'deposit#new'
  post '/deposit', to: 'deposit#amount'
end