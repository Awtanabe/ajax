Rails.application.routes.draw do
  get 'todos/index'
  get 'todos/new'
  get 'todos/create'
  root "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
