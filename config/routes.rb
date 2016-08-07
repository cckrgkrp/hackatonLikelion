Rails.application.routes.draw do
  root 'home#index'
  get '/home' => 'home#index'
  get '/departments' => 'departments#index'
  get '/departments/:id' => 'departments#show', as: :department

  #유저 관련(가입, 로그인, 세션) 
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :users


  resources :proflectures
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
