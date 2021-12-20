Rails.application.routes.draw do
  get 'users/new'   => "users#new"
  # For details on the DSL available within this file, 
  # see https://guides.rubyonrails.org/routing.html
  root "home#top"

  get "tasks/index" => "tasks#index"
  delete "tasks/:id/destroy" => "tasks#destroy"
end
