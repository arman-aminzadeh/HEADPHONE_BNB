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
puts "Start Seeding"

Product.destroy_all

10.times do |i|
  Product.create!(
    name:          Faker::Company.name,
    picture_url:   pictures[i],
    address:       Faker::Address.full_address,
    description:   Faker::Lorem.paragraph,
    price_per_day: rand(1..10).to_f,
    latitude:      Faker::Address.latitude,
    longitude:     Faker::Address.longitude,
    user_id:       1
  )
end

puts "Seeded!"
