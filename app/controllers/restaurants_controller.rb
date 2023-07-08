class RestaurantsController < ApplicationController
  wrap_parameters format: []
  rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
  rescue_from ActiveRecord::RecordInvalid,  with: :render_unprocessable_entity
  skip_before_action :verify_authenticity_token

  def index
    restaurants = Restaurant.all
    render json: restaurants, status: :ok
  end
  

  def show
    restaurant = find_restaurant
    render json: restaurant, status: :ok
  end


  def destroy
    restaurant = find_restaurant
    restaurant.destroy
    head :no_content
  end

  

  private

  def find_restaurant
    Restaurant.find(params[:id])
  end

  def restaurant_params
    params.permit(:name, :address)
  end

  def render_record_not_found exception
    #I use exception.mode.humanize to extract the name of the record from the class title so that
    #this method is dynamic and does not need to be changed when the controller name is changed
    render json: {error: "#{exception.model.humanize} not found" }, status: :not_found
  end


  def render_unprocessable_entity exception
    render json: {error: exception.record.errors.full_messages }, status: :unprocessable_entity
  end
end
