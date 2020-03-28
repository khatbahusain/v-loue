# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



20.times do
  Rent.create(
    date_disponible: Faker::Date.in_date_period(year: 2020, month: 4),
    date_end: Faker::Date.in_date_period(year: 2020, month: 5),
    user_id: nil,
    bike_id: Bike.all.sample.id,
    prix: Random.rand(7),
    payed: false
    )
    puts "rent created"
end

