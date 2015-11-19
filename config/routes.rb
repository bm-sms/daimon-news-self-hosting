Rails.application.routes.draw do
  root 'posts#index'

  resources :posts

  namespace :admin do
    root 'root#index'

    resources :posts
  end
end
