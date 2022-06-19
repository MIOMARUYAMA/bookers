Rails.application.routes.draw do

  post 'books'=>"books#create"
  get  'books'=>'books#index', as:"index_book"
  get  'books/:id'=>'books#show',as:'book'
  get  'books/:id/edit'=>'books#edit',as:'edit_book'
  get  '/top'=>'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
