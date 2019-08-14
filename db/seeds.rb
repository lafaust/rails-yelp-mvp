# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating fake restaurants and reviews...'

5.times do
  restaurant_seed = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )

# review_seed = Review.new(
#   content: Faker::Restaurant.review,
#   rating: rand(0..5)
#   )
# review_seed.restaurant = restaurant_seed
# review_seed.save
end

puts 'Finished!'
