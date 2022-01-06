module Api
  module V1
    class DishesController < ApplicationController
      before_action :set_dish, only: %i[ show update destroy ]

      # GET /dishes
      # GET /dishes.json
      def index
        @dishes = Dish.all
      end

      # GET /dishes/1
      # GET /dishes/1.json
      def show
      end

      # POST /dishes
      # POST /dishes.json
      def create
        @dish = Dish.new(dish_params)

        if @dish.save
          render :show, status: :created, location: @dish
        else
          render json: @dish.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /dishes/1
      # PATCH/PUT /dishes/1.json
      def update
        if @dish.update(dish_params)
          render :show, status: :ok, location: @dish
        else
          render json: @dish.errors, status: :unprocessable_entity
        end
      end

      # DELETE /dishes/1
      # DELETE /dishes/1.json
      def destroy
        @dish.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_dish
          @dish = Dish.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def dish_params
          params.require(:dish).permit(:name, :price)
        end
    end
  end
end
