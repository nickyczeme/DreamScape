# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Mode.create(name: "horror")
User.create(email: "bzoani@itba.edu.ar", first_name: "Barbie", last_name: "Zoani", password: "123456")
Dream.create(title: "Scary", description: "jdsklfdsjfdsjkfdsfds", intensity: 1, price: 1.5, user: User.first, mode: Mode.first)
Booking.create(starting_date: Date.today, ending_date: Date.today + 5, user: User.first, dream: Dream.first)


# Dream.first
# Dream.first.bookings
# Dream.first.users
# Dream.first.user
