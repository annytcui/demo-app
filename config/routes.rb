Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get '/login', to: 'static_pages#home'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
