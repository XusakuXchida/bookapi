Rails.application.routes.draw do
  
  resources :books, except: [:update]
  post 'books/:id' => 'books#update'
end
