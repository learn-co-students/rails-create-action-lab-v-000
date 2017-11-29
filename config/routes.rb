Rails.application.routes.draw do
  resources :students, only: [:show, :index, :new, :create]
  # get '/student/:id', to: 'students#show', as: 'student'
end
