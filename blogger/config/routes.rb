Rails.application.routes.draw do
  root to: 'articles#index'
  get "popular" => "articles#popular"
  
  resources :articles do
  	collection do
  		get 'popular'
  	end

  	resources :comments
  end
  resources :tags
  resources :authors
  resources :author_sessions, only: [:new, :create, :destroy]

  get 'login' => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
end
