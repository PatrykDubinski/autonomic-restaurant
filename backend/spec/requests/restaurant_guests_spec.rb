require 'rails_helper'

RSpec.describe "RestaurantGuests", type: :request do
  describe "GET /restaurant_guests" do
    it "works! (now write some real specs)" do
      get restaurant_guests_path
      expect(response).to have_http_status(200)
    end
  end
end
