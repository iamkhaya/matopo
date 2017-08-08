# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# categories = Category.create([{ id: 5, name: 'Adrenaline', description: 'Blood rushing activity'}])
# activities = Activity.create([{ name: 'Sky Diving',
#                                description: 'Jump from the sky',
#                                categories: [1]
#                                }])
# providers = Provider.create([{
#        name: 'CyleX',
#        province: 'Western Cape',
#        country: 'South Africa',
#        email_1: 'admin@cyclex.com',
#        email_2: 'help@cyclex.com',
#        phone_1: 123_456_789,
#        phone_2: 987_654_321,
 #       tax_number: 456_123,
  #      street_number: 301,
   #     street_name_1: 'Britton Avenue',
    #    city: 'Cape Town',
    #    website: 'www.cyclex.com'
  #  }])

# offerings = Offering.create([{
#    description: 'This is my cycle activity',
#    place: 'Fish Hoek',
#    pricingperperson: 299,
#    inclusions: 'All things nice',
#    exclusions: 'All things rice'
#    }])

# trips = Trip.create([{
#    name: 'My Sassy Salamander',
#    start_date: '2017-06-17',
#    end_date: '2017-06-17',
#    user_id: 'User ID',
#    number_of_adults: 1,
#    number_of_infants: 1,
#    number_of_children: 1,
#    city: 'Cape Town',
#    country: 'South Africa',
#    region: 'Western Province'
# }])

# reservations = Reservation.create([{
#    user_id: 1,
#    offering: 1,
#    booking_date: "2017-06-19 22:05:31",
#    start_time: "2017-06-19 22:05:31",
#    end_time: "2017-06-19 22:05:31",
#    status: "booked",
#    trip: 1
# }])

unless User.exists?(email: "admin@matopo.com")
  User.create!( email: "admin@matopo.com",
                password: "p455word",
                admin: true)
end


unless User.exists?(email: "customer@matopo.com")
  User.create!( email: "customer@matopo.com",
                password: "p455word",
                admin: true)
end
