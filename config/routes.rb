Rails.application.routes.draw do

  post 'books'=>"books#create"
  get 'books'=>'books#index'
  get  'books/:id'=>'books#show',as:'book'
  get 'books/edit'
  get'/top'=>'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
