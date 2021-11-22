# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all
Student.destroy_all
10.times do
name = Faker::TvShows::GameOfThrones.character
email = name.split(' ')[0].downcase + "@example.com"
Student.create(name: name, email: email, password: "123456")
end
20.times do
  number = rand(1..5) * 100 + rand(1..5)
  Course.create(
    name: Faker::Educator.subject,
    short_name: "CS#{number}",
    description: Faker::GreekPhilosophers.quote
  )
end

15.times do
  student = Student.all.sample
  course = Course.all.sample
  student.courses << course
end




