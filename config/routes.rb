Rails.application.routes.draw do
  devise_for :users
  root 'users#profile'

  get "users/profile" => "users#profile", as: :users_profile

  get "/users/all" => "users#all", as: :users
  get "/users/:id" => 'users#all', as: :user

  get "/follow/:id" => 'users#follow', as: :follow_user
  get "/unfollow/:id" => 'users#unfollow', as: :unfollow_user

end
