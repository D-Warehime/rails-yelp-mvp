require 'faker'
Restaurant.destroy_all
category_list = ["chinese", "italian", "japanese", "french", "belgian"]
restaurants = [
  {
    name: Faker::Company.name,
    address: Faker::Address.street_address + ", " + Faker::Address.city,
    phone_number: Faker::Number.number(10),
    category: category_list.sample
  },
  {
    name: Faker::Company.name,
    address: Faker::Address.street_address + ", " + Faker::Address.city,
    phone_number: Faker::Number.number(10),
    category: category_list.sample
  },
  {
    name: Faker::Company.name,
    address: Faker::Address.street_address + ", " + Faker::Address.city,
    phone_number: Faker::Number.number(10),
    category: category_list.sample
  },
  {
    name: Faker::Company.name,
    address: Faker::Address.street_address + ", " + Faker::Address.city,
    phone_number: Faker::Number.number(10),
    category: category_list.sample
  },
  {
    name: Faker::Company.name,
    address: Faker::Address.street_address + ", " + Faker::Address.city,
    phone_number: Faker::Number.number(10),
    category: category_list.sample
  }
]
Restaurant.create!(restaurants)
