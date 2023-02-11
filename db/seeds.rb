# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "seeding.....🌱🌱🌱."

20.times { User.create!(first_name: Faker::Artist.name, last_name: Faker::Artist.name, email: Faker::Name.name, password: Faker::Artist.name, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)}

puts "seeding done 🌱🌱🌱"

20.times { Account.create!(user_id: User.first.id, account_type: "savings", amount: 0)}

20.times { Transaction.create!(account_id: 1, date: "10/02/2023", amount: 300, transaction_type: "withdrawal")}