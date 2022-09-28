Rails.application.routes.draw do
  resources :messages 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post 'messages/message_generate'

  # Defines the root path route ("/")
  # root "articles#index"
  root "messages#index"
end
