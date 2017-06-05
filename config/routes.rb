Rails.application.routes.draw do

  resources :advertisements

  resources :posts

  get 'about' => 'welecome#about'

  root 'welcome#index'
end
