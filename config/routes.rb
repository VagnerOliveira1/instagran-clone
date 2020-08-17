Rails.application.routes.draw do
  root "posts#index"
  #sessions para logar
  #registrations para criar uma conta
  #passwords para resetar a senha

  devise_for :users, only: %[sessions registrations passwords]

  resources :posts, only: %i[index show new create]
end
