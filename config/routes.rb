Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Mostrar todas tareas
  get '/tasks', to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new'

  # Mostrar una tarea
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Agregar una tarea

  post 'tasks', to: 'tasks#create'

  # Editar una tarea

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  # Eliminar tarea

  delete 'tasks/:id', to: 'tasks#destroy'

end
