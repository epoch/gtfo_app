Rails.application.routes.draw do

  root 'pages#home'

  resources :rooms
  resources :reservations

end
