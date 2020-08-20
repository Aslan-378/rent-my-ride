# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Booking.destroy_all
Vehicle.destroy_all
User.destroy_all

User.create(email: "fakhri@live.com", password: "123123")
user = User.first
User.create(email: "deci@live.com", password: "223123")
user2 = User.last


puts "Creating vehicles..."
Vehicle.create!(category: "Bicycle", model: "Émonda SL 7", description: "Road bike. Brand new. Good condition.", price: 15, address: "91 Park Avenue London EC48 0DP", user: user)
Vehicle.create!(category: "Bicycle", model: "MARLIN 7 MOUNTAIN BIKE", description: "Good mountain bike, perfect for racers. Has a very light aluminium frame.", price: 26, address: "5 Church Street London N50 2LD", user: user)
Vehicle.create!(category: "Scooter", model: "FUZE - 750W", description: "Owned for 7 months, so pretty much brand new. Comfortable electric scooter.", price: 40, address: "683 Mill Road London SE27 8WG", user: user)
Vehicle.create!(category: "Scooter", model: "FUZE - 750W", description: "Owned for 7 months, so pretty much brand new. Comfortable electric scooter.", price: 40, address: "683 Mill Road London SE27 8WG", user: user2)
puts "creating bookings....."
Booking.create!(start_date: DateTime.new(2001,2,3,4,5,6), end_date: DateTime.new(2001,2,3,8,35,6), price: 100, vehicle: Vehicle.all.sample, user: user2)
Booking.create!(start_date: DateTime.new(2002,2,3,4,5,6), end_date: DateTime.new(2002,2,3,8,35,6), price: 150, vehicle: Vehicle.all.sample, user: user2)
Booking.create!(start_date: DateTime.new(2003,2,3,4,5,6), end_date: DateTime.new(2003,2,3,8,35,6), price: 120, vehicle: Vehicle.all.sample, user: user2)

puts "Finished!"
