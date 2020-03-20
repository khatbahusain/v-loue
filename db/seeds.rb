# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



20.times do
  User.create!(
    email: Faker::Internet.email(domain: 'yopmail.com'),
    password: "123456",
    password_confirmation: "123456",
    birthday: "10-10-1990 10:10"
    )
end

# to do how to seed image ?
# 100.times do |n|
#  Bike.create!(more_info:         Faker::Lorem.sentence,
#              user_id:           (User.all.ids).sample
#                 )
#end