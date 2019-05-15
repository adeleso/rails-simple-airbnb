require 'faker'
Flat.destroy_all

8.times do
  Flat.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence,
    price_per_night: rand(23..320),
    number_of_guests: rand(1..12)
  )
end
