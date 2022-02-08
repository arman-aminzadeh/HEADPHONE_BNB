require "faker"

Product.destroy_all

Product.create!(
    name: "Black Losangeles",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 7.00,
    picture_url: 'black_los_angeles_otdtvm',
    user_id: 1
)

Product.create!(
    name: "New York",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 5.00,
    picture_url: 'new_york_tccs5o',
    user_id: 1
)

Product.create!(
    name: "Miami",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 3.00,
    picture_url: 'miami_sirijp',
    user_id: 1
)

Product.create!(
    name: "Stockholm Plus",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 3.50,
    picture_url: 'stockholm_plus_l2t5d9',
    user_id: 1
)

Product.create!(
    name: "Athens",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 4.20,
    picture_url: 'athens_auanme',
    user_id: 1
)

Product.create!(
    name: "Seoul",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 8.88,
    picture_url: 'seoul_upxhcs',
    user_id: 1
)

Product.create!(
    name: "Berlin",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 6.66,
    picture_url: 'berlin_iyowtn',
    user_id: 1
)

Product.create!(
    name: "Madrid",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 6.50,
    picture_url: 'madrid_osdre7',
    user_id: 1
)

Product.create!(
    name: "Miami Crystal Edition",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 10,
    picture_url: 'miami_crystal_edition_en7fwn',
    user_id: 1
)

Product.create!(
    name: "Boston",
    description: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    price_per_day: 2.80,
    picture_url: 'boston_iuvtzv',
    user_id: 1
)
