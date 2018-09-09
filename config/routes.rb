Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  # resources :students, only: [:index, :new, :create, :show]
  # pass tests with commented line above having :show appears to perform same function as line of code below.
  get '/student/:id', to: 'students#show', as: 'student'
end
