Rails.application.routes.draw do
  root to: 'messages#new'
  resources :messages, only: [:index, :new, :create, :show]
end
