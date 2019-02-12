Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # READ (All)
  get "/tasks", to: "tasks#index"

  # CREATE (One)
  get "/tasks/new", to: "tasks#new"
   # FORM (Submit New)
  post "/tasks", to: "tasks#create"

  # READ (One)
  get "/tasks/:id", to: "tasks#show", as: "task"

  # EDIT (Details)
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  # UPDATE (Update DB)
  patch "/tasks/:id", to: "tasks#update"

  # DELETE (One)
  delete "/tasks/:id", to: "tasks#destroy", as: "destroy_task"

end
