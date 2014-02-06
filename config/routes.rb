Ftm::Application.routes.draw do
  root "static_pages#index"

  namespace :admin do

  end

  namespace :supervisor do

  end
  
  resources :subjects
  resources :tasks
end
