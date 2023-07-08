class RestaurantPizzasController < ApplicationController
  wrap_parameters format: []
  rescue_from ActiveRecord::RecordInvalid,  with: :render_unprocessable_entity
  skip_before_action :verify_authenticity_token


  def create
    restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
    pizza = restaurant_pizza.pizza
    render json: pizza, status: :ok
  end
  

  private

  def restaurant_pizza_params
    params.permit(:price, :pizza_id, :restaurant_id)
  end

  def render_unprocessable_entity exception
    render json: {errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
end
