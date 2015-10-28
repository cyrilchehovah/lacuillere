# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

20.times do
  cat = ["chinese", "italian", "japanese", "french", "belgian"].sample
  resto = Restaurant.new(name: Faker::Company.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, category: cat)
  resto.save
  3.times do
    rate = [0, 1, 2, 3, 4, 5].sample
    resto.reviews.create(content: Faker::Lorem.paragraph, rating: rate)
  end
end
