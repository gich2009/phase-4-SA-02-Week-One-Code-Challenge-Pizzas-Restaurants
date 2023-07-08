Rails.application.routes.draw do
  #GET /restaurants
  #GET /restaurants/:id
  #DELETE /restaurants/:id
  resources :restaurants,      only: [:index, :show, :destroy]


  #GET /pizzas
  resources :pizzas,           only: [:index]


  #POST /restaurant_pizzas
  resources :restaurant_pizzas, only: [:create]
  
end
