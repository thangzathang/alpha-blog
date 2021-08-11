Rails.application.routes.draw do
  
  root 'pages#home'

  get 'about', to: 'pages#about'
  get 'how', to: 'pages#how', as: :how

  resources :articles #, only: [:show, :index, :new, :create, :edit, :update, :destroy]

  get 'signup', to: 'users#new'

  # Little confused here
  # post 'users', to: 'users#create'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]
end
