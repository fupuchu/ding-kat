# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# clear the table before seeding?
# Subscription.destroy_all
# SubscriptionsUsers.destroy_all
# User.destroy_all

Subscription.create!([{name: '1 Week', price: 60}, {name: '1 Month', price: 240}, {name: '3 Months', price: 660}, {name: '6 Months', price: 1200}])
User.create!([{email: 'leon@example.com', password: 'password', password_confirmation: 'password'}, {email: 'sam@example.com', password: 'password', password_confirmation: 'password'}, {email: 'julian@example.com', password: 'password', password_confirmation: 'password'}, {email: 'jay@example.com', password: 'password', password_confirmation: 'password'}])
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?