# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts " creating 2 users"
User.create!(last_name: "Jones", first_name: "Martin", email: "martinjones@gmail.com", password: "jdiehoej44")
User.create!(last_name: "Doe", first_name: "Jane", email: "janedoe@gmail.com", password: "jdi87ej44")
puts "users created"
