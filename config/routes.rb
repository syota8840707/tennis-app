Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "coats#index"
<<<<<<< HEAD
  resources :coats
=======
  resources :coats, only: [:index, :new, :create, :show]
>>>>>>> parent of 24597e8 (編集機能実施)
end
