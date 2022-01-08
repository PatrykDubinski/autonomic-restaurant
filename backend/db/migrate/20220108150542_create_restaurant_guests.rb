class CreateRestaurantGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_guests do |t|
      t.string :code

      t.timestamps
    end
  end
end
