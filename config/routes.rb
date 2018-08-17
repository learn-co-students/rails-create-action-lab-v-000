Rails.application.routes.draw do
  resources :students, only: [:index, :new]
  post '/student' => 'students#create', as: 'create_student'

  get '/student/:id', to: 'students#show', as: 'student'
end
