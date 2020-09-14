Rails.application.routes.draw do
  get 'dashboard/show'
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :accounts
  
  root 'welcome#index'

  get 'auth/auth0/callback' => 'auth0#callback'
  get 'auth/failure' => 'auth0#failure'

  get 'dashboard' => 'dashboard#show'

  get 'logout' => 'logout#logout'

end
