module Api
  module V1
    class RestaurantGuestsController < ApplicationController
      before_action :set_restaurant_guest, only: %i[ show update destroy ]

      # GET /restaurant_guests
      # GET /restaurant_guests.json
      def index
        @restaurant_guest = RestaurantGuest.new

        @restaurant_guest.code = SecureRandom.uuid

        qrcode = RQRCode::QRCode.new(@restaurant_guest.code)

        png = qrcode.as_png(
          bit_depth: 1,
          border_modules: 4,
          color_mode: ChunkyPNG::COLOR_GRAYSCALE,
          color: "black",
          file: nil,
          fill: "white",
          module_px_size: 6,
          resize_exactly_to: false,
          resize_gte_to: false,
          size: 120
        )

        unless @restaurant_guest.image.attached?
          @restaurant_guest.image.attach(io: StringIO.new(png.to_s), filename: "qrcode.png")
        end
        if @restaurant_guest.save
          render :guest, status: :created
        end
      end

      # GET /restaurant_guests/1
      # GET /restaurant_guests/1.json
      def show
      end

      # POST /restaurant_guests
      # POST /restaurant_guests.json
      def create
        @restaurant_guest = RestaurantGuest.new(restaurant_guest_params)

        if @restaurant_guest.save
          render :show, status: :created, location: @restaurant_guest
        else
          render json: @restaurant_guest.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /restaurant_guests/1
      # PATCH/PUT /restaurant_guests/1.json
      def update
        if @restaurant_guest.update(restaurant_guest_params)
          render :show, status: :ok, location: @restaurant_guest
        else
          render json: @restaurant_guest.errors, status: :unprocessable_entity
        end
      end

      # DELETE /restaurant_guests/1
      # DELETE /restaurant_guests/1.json
      def destroy
        @restaurant_guest.destroy
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_restaurant_guest
        @restaurant_guest = RestaurantGuest.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def restaurant_guest_params
        params.require(:restaurant_guest).permit(:code)
      end
    end

  end
end