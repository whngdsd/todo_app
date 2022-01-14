Rails.application.routes.draw do
  #get 'sessions/new'
  # ログイン/ログアウト
  get     "/login"             => "sessions#new"
  post    "/login"             => "sessions#create"
  delete  "/logout"            => "sessions#destroy"

  get     "users/new"         => "users#new"
  post    "users/new"         => "users#create"
  # For details on the DSL available within this file, 
  # see https://guides.rubyonrails.org/routing.html
  root    "home#top"

  get     "tasks/index"       => "tasks#index"
  get     "tasks/new"         => "tasks#new"
  post    "tasks/create"      => "tasks#create"
  #get "tasks/:id/edit"        => "tasks#edit"
  #post "tasks/:id/update"     => "tasks#update"
  delete  "tasks/:id/destroy" => "tasks#destroy"
end
