Rails.application.routes.draw do
  devise_for :users
  root 'events#index'

  resources :sessions, only: [:create]
  resources :venues
  resources :users
  resources :caterers 
  resources :events

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  patch "/events/:id/addguest", to: "events#addguest", as: "addguest"
end


#new_session_path(resource_name)