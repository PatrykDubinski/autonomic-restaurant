require "rails_helper"

RSpec.describe RestaurantGuestsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/restaurant_guests").to route_to("restaurant_guests#index")
    end

    it "routes to #show" do
      expect(:get => "/restaurant_guests/1").to route_to("restaurant_guests#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/restaurant_guests").to route_to("restaurant_guests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/restaurant_guests/1").to route_to("restaurant_guests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/restaurant_guests/1").to route_to("restaurant_guests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/restaurant_guests/1").to route_to("restaurant_guests#destroy", :id => "1")
    end
  end
end
