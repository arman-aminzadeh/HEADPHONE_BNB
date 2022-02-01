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
        address: 
        price_per_day: 7$
        picture_url: 'https://www.urbanista.com/media/catalog/product/cache/6c07725d11cf11164242a71cef72688e/b/l/black_losangeles_studio_packshot_2.webp',
    )

"Flat.destroy_all

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  picture_url: 'https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)