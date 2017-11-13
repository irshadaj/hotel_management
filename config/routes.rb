Rails.application.routes.draw do
  get 'reservations/all' => 'reservations#all'

  get 'reservations/new' => 'reservations#new'
  post 'reservations/new' => 'reservations#create'

  get 'reservations/edit' => 'reservations#edit'

  root to: 'home#index'

  post 'home/signin' => 'home#signin'
  get 'dashboard' => 'home#dashboard'
end
