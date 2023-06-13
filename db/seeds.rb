# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
User.create!(username: 'defaultuser', email: 'support@test.com', password: 'support', password_confirmation: 'support')
User.create!(username: 'standartuser', email: 'standart@test.com', password: 'testtest', password_confirmation: 'testtest')