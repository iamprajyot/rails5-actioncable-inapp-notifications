Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users, controllers: { registrations: 'users/registrations',
  confirmations: 'users/confirmations',
  passwords: 'users/passwords',
  sessions: 'users/sessions'}
  get 'home/index'
  get 'home/show_message'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
