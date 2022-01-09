Rails.application.routes.draw do
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show',as:'books_show'
  get 'books/:id/edit' => 'books#edit',as:'books_edit'
  delete 'books/:id' => 'books#destroy'
  patch 'books/:id' => 'books#update'
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end