class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])

    # if current_user
    #   @reservation = @restaurant.reservation.build
    # end
  end

  def new
    @restaurant = Restaurant.new
  end  

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_url(@restaurant)
    else
      render :new
    end
  end

  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end

  # def update
  #   @restaurant = Restaurant.find(params[:id])

  #   if @restaurant.update_attributes(restaurant_params)
  #     redirect_to restaurant_path(@restaurant)
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(
      :name, 
      :description, 
      :category_id, 
      :owner_id, 
      :capacity, 
      :open_from, 
      :open_to, 
      :address, 
      :phone, 
      :photo_url
      )
  end
end
