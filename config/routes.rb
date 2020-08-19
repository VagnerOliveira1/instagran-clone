Rails.application.routes.draw do
  get 'users/show'
  root "posts#index"
  #sessions para logar
  #registrations para criar uma conta
  #passwords para resetar a senha

  devise_for :users, only: %i[sessions registrations passwords]

  resources :posts, only: %i[index show new create]

  resources :users, only: %i[show], param: :username # substitui o id por username
end
