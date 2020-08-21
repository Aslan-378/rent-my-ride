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
Review.destroy_all

User.create(email: "fakhri@live.com", password: "123123")
user = User.first
User.create(email: "deci@live.com", password: "223123")
user2 = User.last


puts "Creating vehicles..."

Vehicle.create!(category: "Bicycle", model: "Émonda SL 7", description: "Road bike. Brand new. Good condition.", price: 15, address: "44 Amhurst Road, London", user: user)
Vehicle.create!(category: "Bicycle", model: "MARLIN 7", description: "Good mountain bike, perfect for racers. Has a very light aluminium frame.", price: 26, address: "47-49 Oxford Street, London", user: user)
Vehicle.create!(category: "Scooter", model: "FUZE - 750W", description: "Owned for 7 months, so pretty much brand new. Comfortable electric scooter.", price: 40, address: "Morley Street, London ", user: user)
Vehicle.create!(category: "Scooter", model: "ROCKRIDER V400", description: "Long lasting battery, perfect for city commutes", price: 40, address: "99 Stockwell Park Rd, London ", user: user2)



Vehicle.create!(category: "Bicycle", model: "Émonda SL 7", description: "Road bike. Brand new. Good condition. user 1", price: 15, address: "91 Park Avenue London EC48 0DP", user: user)
Vehicle.create!(category: "Bicycle", model: "MARLIN 7 MOUNTAIN BIKE", description: "Good mountain bike, perfect for racers. Has a very light aluminium frame. user 1", price: 26, address: "5 Church Street London N50 2LD", user: user)
Vehicle.create!(category: "Scooter", model: "FUZE - 750W", description: "Owned for 7 months, so pretty much brand new. Comfortable electric scooter.user 1", price: 40, address: "683 Mill Road London SE27 8WG", user: user)
Vehicle.create!(category: "Scooter", model: "FUZE - 750W", description: "Owned for 7 months, so pretty much brand new. Comfortable electric scooter.", price: 40, address: "683 Mill Road London SE27 8WG", user: user2)
Vehicle.create!(category: "Bicycle", model: "Alan Bike", description: "its pretty decent, good mileage.", price: 40, address: "grand canyon", user: user2)
Vehicle.create!(category: "Electric Scooter", model: "Lightning McQueen", description: "Owned for 10 years, never had any problems.", price: 40, address: "china", user: user2)
Vehicle.create!(category: "Motorbike", model: "Harley", description: "Owned for 3 days, so pretty much brand new. its the best of the best", price: 40, address: "milan", user: user2)
Vehicle.create!(category: "Skateboard", model: "wooden one", description: "Had it for an hour and it was the worst ride of my life.", price: 40, address: "new delhi", user: user2)
vehicle = Vehicle.first
vehicle2 = Vehicle.last
puts "creating bookings....."
Booking.create!(start_date: DateTime.new(2001,2,3,4,5,6), end_date: DateTime.new(2001,2,3,8,35,6), price: 100, vehicle: Vehicle.all.sample, user: user2)
# Booking.create!(start_date: DateTime.new(2002,2,3,4,5,6), end_date: DateTime.new(2002,2,3,8,35,6), price: 150, vehicle: Vehicle.all.sample, user: user2)
# Booking.create!(start_date: DateTime.new(2003,2,3,4,5,6), end_date: DateTime.new(2003,2,3,8,35,6), price: 120, vehicle: Vehicle.all.sample, user: user2)
# Booking.create!(start_date: DateTime.new(2001,2,3,4,5,8), end_date: DateTime.new(2003,2,3,8,35,6), price: 120, vehicle: Vehicle.all.sample, user: user2)
# Booking.create!(start_date: DateTime.new(2001,2,3,5,5,6), end_date: DateTime.new(2003,2,3,8,35,6), price: 120, vehicle: Vehicle.all.sample, user: user2)
# Booking.create!(start_date: DateTime.new(2001,2,2,4,2,6), end_date: DateTime.new(2003,2,3,8,35,6), price: 120, vehicle: Vehicle.all.sample, user: user2)
# Booking.create!(start_date: DateTime.new(2001,2,2,4,5,10), end_date: DateTime.new(2003,2,3,8,35,6), price: 100, vehicle: Vehicle.all.sample, user: user2)
# Booking.create!(start_date: DateTime.new(2007,2,2,4,2,6), end_date: DateTime.new(2003,2,3,8,35,6), price: 120, vehicle: Vehicle.all.sample, user: user)
# Booking.create!(start_date: DateTime.new(2007,2,2,4,5,10), end_date: DateTime.new(2003,2,3,8,35,6), price: 100, vehicle: Vehicle.all.sample, user: user)
puts "creating reviews....."
Review.create!(name: "bob", content: "it is pretty groovy", rating: 4, vehicle: vehicle)
Review.create!(name: "shiela", content: "fast and furious", rating: 4, vehicle: vehicle2)

puts "Finished!"
