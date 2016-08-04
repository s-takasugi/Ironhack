# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1...20).each do |i|
  Venue.create(name: Faker::Address.city , address: Faker::Address.street_name , category: Faker::Address.postcode , image: "http://www.tripandrate.com/content/images/barcelona/places/gaudi/sagrada-familia.sq.jpg")
end

# (1...20).each do |i|
#   Event.create(title: Faker::Name.name , location: Faker::Address.street_name , date: Faker::Date.forward(30)  , image: "https://lh5.googleusercontent.com/-FAnRo_TRYF0/AAAAAAAAAAI/AAAAAAAAahc/wwfN79z4gMA/s0-c-k-no-ns/photo.jpg")
# end
