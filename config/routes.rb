Rails.application.routes.draw do
  get 'books/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'
  # post 'books' => 'books#create'
  # get 'books' => 'books#index', as: 'book_index'
  # # .../todolists/1 や .../todolists/3 に該当する
  # get 'books/:id' => 'books#show', as: 'book_params'
  # get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # patch 'books/:id' => 'books#update', as: 'update_book'
  # delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :books, except: [:new]
end