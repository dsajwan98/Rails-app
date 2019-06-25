Rails.application.routes.draw do
  
   root to:'home#index'
   get '/home', to:'home#index'
   get '/login' ,to:'home#login'
   get '/contact', to:'home#contact'
   post '/auth', to:'home#auth'
   resources :articles

end
