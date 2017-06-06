Rails.application.routes.draw do

  resources :questions

  resources :posts

  get 'about' => 'welecome#about'

  root 'welcome#index'
end
