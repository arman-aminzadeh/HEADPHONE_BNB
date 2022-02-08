require "faker"

Product.destroy_all

Product.create!(
    name: "Black Losangeles",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 7.00,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/b/l/black_losangeles_studio_packshot_2.webp',
    user_id: 1
)

Product.create!(
    name: "New York",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 5.00,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/3/0/30280_1_1.webp',
    user_id: 1
)

Product.create!(
    name: "Miami",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 3.00,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/4/4/44259_1.webp',
    user_id: 1
)

Product.create!(
    name: "Stockholm Plus",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 3.50,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/4/0/40407_1.webp',
    user_id: 1
)

Product.create!(
    name: "Atens",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 4.20,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/3/5/35327-1_1.webp',
    user_id: 1
)

Product.create!(
    name: "Seoul",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 8.88,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/0/0/0006_midnight_black_angle_1.webp',
    user_id: 1
)

Product.create!(
    name: "Berlin",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 6.66,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/2/6/26808_1.webp',
    user_id: 1
)

Product.create!(
    name: "Madrid",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 6.50,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/3/0/30268_1.webp',
    user_id: 1
)

Product.create!(
    name: "Miami Crystal Edition",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 10,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/4/5/45683_1_1.webp',
    user_id: 1
)

Product.create!(
    name: "Boston",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 2.80,
    picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/2/1/21315_1.webp',
    user_id: 1
)
