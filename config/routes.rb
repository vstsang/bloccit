Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
  end

  get 'about' => 'welecome#about'

  root 'welcome#index'
end
