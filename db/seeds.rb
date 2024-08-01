# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Address.destroy_all
Employee.destroy_all


8.times do
  addresses = []
  2.times do
    addresses.push(Address.create({street: Faker::Address.full_address}))
  end

  employee = Employee.new({name: Faker::Name.name})
  employee.addresses.push(addresses)
  employee.save
end