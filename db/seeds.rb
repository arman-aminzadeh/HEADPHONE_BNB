require "faker"

# DONT DELETE
# pictures = %w[
#  https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/b/l/black_losangeles_studio_packshot_2.webp
#  https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/3/0/30280_1_1.webp
#  https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/3/0/30280_1_1.webp
#  https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/4/0/40407_1.webp
#  https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/3/5/35327-1_1.webp
#  https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/0/0/0006_midnight_black_angle_1.webp
#  https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/2/6/26808_1.webp
#  https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/3/0/30268_1.webp
#  https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/4/5/45683_1_1.webp
#  https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/2/1/21315_1.webp
#              ]
# DONT DELETE

names = [
  "Black Los Angeles",
  "New York",
  "Miami",
  "Stockholm Plus",
  "Athens",
  "Seoul",
  "Berlin",
  "Madrid",
  "Miami Crystal Edition",
  "Boston"
]

pictures = %w[
  black_los_angeles_otdtvm
  new_york_tccs5o
  miami_sirijp
  stockholm_plus_l2t5d9
  athens_auanme
  seoul_upxhcs
  berlin_iyowtn
  madrid_osdre7
  miami_crystal_edition_en7fwn
  boston_iuvtzv
]

addresses = [
  "Cl. de Ayala, 21, 28001 Madrid",
  "C. de Sánchez Barcáiztegui, 28007 Madrid",
  "C. Pedro Campos, 22, 28019 Madrid",
  "C. Alora, 22, 28018 Madrid",
  "C. Lucano, 8, 28022 Madrid",
  "Rda. Abubilla, 26, 28043 Madrid",
  "C. Calanda, 3, 28043 Madrid",
  "C. Artesa de Segre, 5, 28035 Madrid",
  "C. Fondón, 1, 2º D, 28033 Madrid",
  "C. Edison, 18, 28906 Getafe, Madrid"
]
puts "Clearing database"
# Review.destroy_all
# Booking.destroy_all
Product.destroy_all
# User.destroy_all
puts "Database cleared"

puts "Seeding"
sleep 1
puts "Creating products"

10.times do |i|
  Product.create!(
    name:          names[i],
    picture_url:   pictures[i],
    address:       addresses[i],
    description:   Faker::Quote.famous_last_words,
    price_per_day: rand(1..10).to_f,
    # latitude:      Faker::Address.latitude,
    # longitude:     Faker::Address.longitude,
    user_id:       1
  )
end

puts "Seeded!"
