# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying current data..."
User.destroy_all
Car.destroy_all
Booking.destroy_all

puts 'Creating 10 users...'
10.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  user.save!
end
puts 'Ok for user'

puts 'Creating 10 cars...'
brands = ["Renault", "Renault", "Audi", "Audi", "Citroën", "Citroën", "Honda", "Honda", "Peugeot", "Peugeot"]
models = ["Super 5", "Zoe", "A8", "A3", "DS4", "2CV", "Civic", "N600", "403", "3008"]
places = ["rue de la Gare, Nantes", "rue Henri IV, Nantes", "rue des Trois Croissants, Nantes",
          "ch. de la Madeleine, Nantes", "rue de Gigant, Nantes", "rue des Tulipes, Rezé",
          "ch. de la Cour, Ste.-Luce-sur-Loire", "bd. J. Verne, Nantes", "rue en Pierre, Nantes",
          "av. de la Métallurgie, Carquefou"]
users_id = []
User.all.each do |user|
  users_id << user.id
end
for i in 1..10
  car = Car.new(
    brand: brands[i - 1],
    model: models[i - 1],
    year_of_production: Faker::Vehicle.year,
    address: places[i - 1],
    price_per_day: (10..200).to_a.sample,
    user_id: users_id[i - 1]
  )
  car.save!
end
puts 'Ok for cars'
