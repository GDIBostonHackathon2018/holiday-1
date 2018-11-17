require 'faker'
I18n.reload!
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
15.times do
    user = User.create!(
    name: Faker::Name.unique.name,
    email: Faker::Internet.free_email,
    bio: Faker::Seinfeld.quote,
    password: "topsecret",
    password_confirmation: "topsecret"
  )

   Listing.create!(
    user_id: user.id,
    start_date: Faker::Date.between(Date.today, 5.year.from_now),
    end_date: Faker::Date.between(Date.today + 1, 5.year.from_now),
    location: Faker::Address.full_address,
    house_type: 5
  )

end
