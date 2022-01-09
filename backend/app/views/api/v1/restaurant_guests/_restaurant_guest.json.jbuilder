json.extract! restaurant_guest, :id, :code, :created_at, :updated_at
json.avatar polymorphic_url(restaurant_guest.image)
