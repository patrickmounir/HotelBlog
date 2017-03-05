class AddHotelsAndServies < ActiveRecord::Migration[5.0]
  def up
      pets = Service.create(name: "Pets are allowed")
      pool = Service.create(name: "Hotel has a Pool")
      bb = Service.create(name: "Bed and Breakfast")
      park = Service.create(name: "Parking is available")
      full = Service.create(name: "Full Board")
       5.times do |i|
          Hotel.create(name: "Hotel ##{i}", location: "Here where you want ",number: "#{i}", website: "http://patrickmournir.github.io")
       end
       Assignment.create(hotel_id: 1, service_id: 2)
       Assignment.create(hotel_id: 1, service_id: 3)
       Assignment.create(hotel_id: 1, service_id: 4)
       Assignment.create(hotel_id: 2, service_id: 2)
       Assignment.create(hotel_id: 3, service_id: 4)
       Assignment.create(hotel_id: 5, service_id: 5)
       Assignment.create(hotel_id: 5, service_id: 3)
       Assignment.create(hotel_id: 5, service_id: 4)
       Assignment.create(hotel_id: 5, service_id: 2)
       Assignment.create(hotel_id: 4, service_id: 4)
       Assignment.create(hotel_id: 4, service_id: 2)
       Assignment.create(hotel_id: 4, service_id: 3)
       Assignment.create(hotel_id: 2, service_id: 4)
       Assignment.create(hotel_id: 3, service_id: 2)
       Assignment.create(hotel_id: 2, service_id: 4)

  end

  def down
    Service.delete_all
    Hotel.delete_all
  end
end
