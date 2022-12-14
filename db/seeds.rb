# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

def create_users
  puts 'creating admin user'
  admin_email = 'admin@example.com'
  password = 'password'
  User.create(email: admin_email, password:, password_confirmation: password)
  puts 'Admin user created'
  puts "Email: #{admin_email}, password: #{password}"
end

create_users
