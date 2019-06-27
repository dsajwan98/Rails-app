Rails.application.routes.draw do
  
   root to:'users#new'
   get '/home', to:'home#index'
   
   get '/contact', to:'home#contact'
   get '/login' ,to:'sessions#new', as:'login'
   post '/login', to:'sessions#create'
   delete '/logout', to:'sessions#destroy'
   resources :articles
   resources :users

end
