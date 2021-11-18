# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all
20.times do
  number = rand(1..5) * 100 + rand(1..5)
  Course.create(
    name: Faker::Educator.subject,
    short_name: "CS#{number}",
    description: Faker::GreekPhilosophers.quote
  )
end

