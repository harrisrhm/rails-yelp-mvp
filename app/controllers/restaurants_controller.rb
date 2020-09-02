class RestaurantsController < ApplicationController
    before_action :find_restaurant, only: [ :destroy, :update, :edit, :show ]
    
    def index
        @restaurants = Restaurant.all
    end

    def show
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        # we need `restaurant_id` to associate review with corresponding restaurant
        @restaurant = Restaurant.new(restaurant_params)
        # @review.restaurant = @restaurant
        if @restaurant.save
            redirect_to restaurant_path(@restaurant)
        else
            render :new    
        end
    end
    
    def edit
    end
    
    def update
    end

    def destroy
    end
    
    private

    def find_restaurant
        @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :category, :phone_number)
    end

end
