Rails.application.routes.draw do
  root 'home#index'
  get 'home/details_show'
  get 'home/second_page'
  get 'home/third_page'
  get 'home/fourth_page'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
