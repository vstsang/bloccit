Rails.application.routes.draw do
  resources :posts

  get 'about' => 'welecome#about'

  root 'welcome#index'
end
