Rails.application.routes.draw do
devise_for :users
root 'home#top'
get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:show, :edit]
resources :books, only:[:new, :create, :index, :show]
end
