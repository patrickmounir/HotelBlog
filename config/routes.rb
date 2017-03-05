Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'user/signup', to: 'users#signup', as: 'usersignup'
  post 'user/signup', to: 'users#create', as: 'userscreate'
  get 'user/login', to: 'users#logpage', as: 'login_page'
  post 'user/login', to: 'users#login', as: 'user_login'
  get 'user/verify/:id', to: 'users#verify', as: 'user_verify'
  get 'user/:user_id/review/new', to: 'reviews#new', as: 'new_user_review'
  post 'user/:user_id/hotel/:hotel_id/review/create', to: 'reviews#create', as: 'create_user_review'
  get 'hotels' , to: 'hotels#index', as: 'hotels'
  get 'hotels/:id' , to: 'hotels#show', as: 'hotel'
end
