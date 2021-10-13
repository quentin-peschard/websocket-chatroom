Rails.application.routes.draw do
  resources :chatrooms, only: :show, param: :name, path: 'chatroom/', as: 'chatroom' do
    resources :messages, only: :create
  end
end
