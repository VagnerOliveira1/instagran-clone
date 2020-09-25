Rails.application.routes.draw do
  get 'users/show'
  root "posts#index"
  #sessions para logar
  #registrations para criar uma conta
  #passwords para resetar a senha

  devise_for :users, only: %i[sessions registrations passwords]


  resources :users, only: %i[show], param: :username # substitui o id por username

  get "edit_profile", to: "users#edit"
  patch "profile", to: "users#update"

  resources :posts, only: %i[index show new create]
  resources :likes, only: %i[create destroy]

end
