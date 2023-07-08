class PizzasController < ApplicationController
  
  #Serializers for this action can be found before the views folder.
  def index
    pizzas = Pizza.all
    render json: pizzas, status: :ok
  end
  
end
