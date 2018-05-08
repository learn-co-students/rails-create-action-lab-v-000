Rails.application.routes.draw do
  resources :students, only: [:index, :new, :show, :create]
# or can use: get '/student/:id', to: 'students#show', as: 'student'
end
