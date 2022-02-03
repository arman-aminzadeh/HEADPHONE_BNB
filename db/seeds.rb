# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

Product.create!(
    name: "Black Losangeles",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 7$
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/b/l/black_losangeles_studio_packshot_2.webp'
)

Product.create!(
    name: "New York",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 5$
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/3/0/30280_1_1.webp'
)

Product.create!(
    name: "Miami",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 3$
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/4/4/44259_1.webp'
)

Product.create!(
    name: "Stockholm Plus",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 3.5$,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/4/0/40407_1.webp'
)

Product.create!(
    name: "Atens",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 4.2$,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/3/5/35327-1_1.webp'
)

Product.create!(
    name: "Seoul",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 8$,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/0/0/0006_midnight_black_angle_1.webp'
)

Product.create!(
    name: "Berlin",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 6$,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/2/6/26808_1.webp'
)

Product.create!(
    name: "Madrid",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 6.5$,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/3/0/30268_1.webp'
)

Product.create!(
    name: "Miami Crystal Edition",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 10$,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/4/5/45683_1_1.webp'
)

Product.create!(
    name: "Boston",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 2.8$,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/2/1/21315_1.webp'
)
