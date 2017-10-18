Rails.application.routes.draw do
  devise_for :users
	root 'movies#index'
	resources :movies do
		resources :likes, only: :create
		resources :comments, only: :create
	end

end
