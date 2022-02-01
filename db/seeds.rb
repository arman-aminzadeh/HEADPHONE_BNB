# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
12.times do
    create.product!(
        name: Faker::name
        description: Faker::Lorem.sentence
        address: Faker::Address.full_address
        price_per_day: Faker::Commerce.price
        
    )