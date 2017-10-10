Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/pages/newtodo', to: 'pages#newtodo', as: 'newtodo'
  post '/pages/newtodo', to: 'pages#create'
end
