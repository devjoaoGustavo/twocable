Rails.application.routes.draw do
  root 'home#chat'
  post '/login', to: 'users#create'
  post '/message', to: 'messages#create'

  mount ActionCable.server => '/cable'
end
