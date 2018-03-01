Rails.application.routes.draw do
  root 'users#profile'

  get "users/profile" => "users#profile", as: :users_profile
end
