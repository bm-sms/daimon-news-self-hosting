Rails.application.routes.draw do
  root 'posts#index'

  resources :posts

  namespace :admin do
    resources :posts
  end
end
