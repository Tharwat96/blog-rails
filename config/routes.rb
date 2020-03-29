Rails.application.routes.draw do
  get 'homepage/index'
  get 'posts/index'
  get 'posts/new', to: 'posts#new'
  root to: 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
