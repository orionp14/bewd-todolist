Rails.application.routes.draw do
  root 'homepage#index'

  get 'tasks' => 'tasks#index'
  post 'tasks' => 'tasks#create'
  delete 'tasks/:id' => 'tasks#destroy'
  put '/tasks/:id/mark_complete' => 'tasks#mark_complete'
  put '/tasks/:id/mark_active'   => 'tasks#mark_active'

  get '*path' => 'homepage#index'
end
