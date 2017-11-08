require 'faker'
Restaurant.destroy_all
category_list = ["chinese", "italian", "japanese", "french", "belgian"]
restaurants = [
  {
    name: Faker::Company.name,
    address: Faker::Address.street_address + ", " + Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category_list.sample.capitalize
  },
  {
    name: Faker::Company.name,
    address: Faker::Address.street_address + ", " + Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category_list.sample.capitalize
  },
  {
    name: Faker::Company.name,
    address: Faker::Address.street_address + ", " + Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category_list.sample.capitalize
  },
  {
    name: Faker::Company.name,
    address: Faker::Address.street_address + ", " + Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category_list.sample.capitalize
  },
  {
    name: Faker::Company.name,
    address: Faker::Address.street_address + ", " + Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category_list.sample.capitalize
  }
]
Restaurant.create!(restaurants)
