Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do 
    resources :samples
    post "/images/create/:user_id', to: 'images#create_image"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
