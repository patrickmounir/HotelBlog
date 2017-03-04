Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/user/signup', to: 'users#signup', as: 'usersignup'
  post 'user/signup', to: 'users#create', as: 'userscreate'
end
