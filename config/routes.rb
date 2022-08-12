Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  patch 'books/:id' => 'books#update', as: 'update_book'
  put 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  root :to => 'homes#top'
end
