Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/create'
  get 'show' => 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end