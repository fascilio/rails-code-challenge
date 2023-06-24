Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :destroy]
  resources :pizzas, only: [:index]
  post '/restaurant_pizzas', to: 'restaurant_pizzas#create'
end
