Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
  	resources :comments
  end

  namespace :api do
    get '/articles', to: 'articles#index'
  end
  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
