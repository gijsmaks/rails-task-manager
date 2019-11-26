Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # view all
  get "tasks", to: "tasks#index", as: "tasks"

  # create
  get "tasks/new", to: "tasks#new", as: 'new'
  post "tasks", to: "tasks#create"

  # view one
  get "tasks/:id", to: "tasks#show", as: "show_task"

  # update
  get "tasks/:id/edit", to: "tasks#edit", as: "edit_tasks"
  patch "tasks/:id", to: "tasks#update", as: "task"

  # delete
  delete "tasks/:id", to: "tasks#destroy", as: "deleted_task"
end
