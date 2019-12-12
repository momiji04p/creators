Rails.application.routes.draw do
  get 'tops/index'
  # root :to =>'tops/about'
  devise_for :admins
  devise_for :users
  get 'admin/videos'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :images
  resources :videos
  resources :books
  resources :games
  resources :contacts
  resources :relationships
  resources :reports
  resources :reviews
end
