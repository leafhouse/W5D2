Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'sessions#new'

  resource :session, only: [:create, :new, :destroy]
  resources :users, only: [:create, :new]
  resources :subs, only: [:create, :new, :index, :show, :update, :edit] 
  resources :posts, only: [:create, :new, :show, :destroy, :index]
end
