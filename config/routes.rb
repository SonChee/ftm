Ftm::Application.routes.draw do

  root to: 'static_pages#index'
  resources :sessions,  only: [:new, :create, :destroy]

  namespace :admin do
    resources :users
    resources :supervisors
  end

  namespace :supervisor do

    resources :courses
    resources :trainees
  end

  resources :users
  resources :subjects
  resources :tasks

  match '/help', to: 'static_pages#help', via: 'get'
  match '/about', to: 'static_pages#about' , via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  match '/signin', to: 'sessions#new' , via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

end
