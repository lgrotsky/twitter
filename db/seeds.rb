# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.find_or_create_by!(
  first_name: "Lisa",
  last_name: "Grotsky",
  username: "lgrotsky",
  bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  city: "Ashville",
  state: "Ohio",
)

u.tweets.destroy_all

20.times do
  u.tweets.create!(
    message: Faker::HarryPotter.quote,
    created_at: Faker::Date.between(2.months.ago, Time.now)
    )
end
