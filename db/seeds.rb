# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Room.destroy_all

puts " creating 2 users"
jones = User.create!(last_name: "Jones", first_name: "Martin", email: "martinjones@gmail.com", password: "jdiehoej44")
doe = User.create!(last_name: "Doe", first_name: "Jane", email: "janedoe@gmail.com", password: "jdi87ej44")
puts "users created"

puts "creating 2 rooms"
first = Room.create!(room_number: 2, description: "jolie chambre avec vue sur mer", capacity: 2, availability: true, price_per_night: 80)
second = Room.create!(room_number: 4, description: "jolie chambre pour une famille avec vue sur piscine", capacity: 2, availability: true, price_per_night: 120)
puts "2 rooms created"

puts "creating 2 bookings"
Booking.create!(start_date: "2023-07-23", end_date: "2023-07-28", user: jones, room: first)
Booking.create!(start_date: "2023-07-25", end_date: "2023-07-30", user: doe, room: second)
puts "created 2 bookings"
