Rails.application.routes.draw do

  get 'customers/all' => 'customers#all'
  get 'customers/new' => 'customers#new'
  post 'customers/new' => 'customers#create'

  get 'reservations/all' => 'reservations#all'
  get 'reservations/new' => 'reservations#new'
  post 'reservations/new' => 'reservations#create'
  get 'reservations/edit' => 'reservations#edit'
  post 'reservations/edit' => 'reservations#update'

  root to: 'home#index'

  post 'home/signin' => 'home#signin'
  get 'dashboard' => 'home#dashboard'
end
