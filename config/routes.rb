Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # route to list the tasks
  get 'tasks', to:'tasks#index'

  # two routes to handle the creation of a task
  get 'tasks/new', to:'tasks#new'
  post'/tasks', to:'tasks#create'

  # add the two routes to edit
  get '/tasks/:id/edit', to:'tasks#edit', as: :edit
  patch '/tasks/:id', to:'tasks#update'

  # delete
  delete'tasks/:id', to:'tasks#destroy'

  # route to display the task
  # The `show` route needs to be *after* `new` route.
  get 'tasks/:id', to: 'tasks#show', as: :task
end
