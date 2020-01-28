Rails.application.routes.draw do

  get 'users/show'
devise_for :users
root 'home#top'
get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
