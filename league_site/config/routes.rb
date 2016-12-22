Rails.application.routes.draw do
  root 'users#index'
  get 'champions/index'
  get 'free_to_play/index'
  get 'users/show'
  get 'users/index'
  get 'champions/show'
  resources :champions
  resources :free_to_play
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
