Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  post '/students/new', to: 'students#new'
  get '/student/:id', to: 'students#show', as: 'student'
end
