Rails.application.routes.draw do
  # get 'blogs/index'
  # get 'blogs/show'
  # get 'blogs/new'
  # get 'blogs/edit'
  # RESTfulなURLを指定するからこの４つは使わない
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs
end
