Rails.application.routes.draw do
  resources :shops
root 'posts#index', as: 'home'


get 'about' => 'pages#about'
get 'contacts' => 'pages#about'

resources :posts do 
	resources :comments
end
end
