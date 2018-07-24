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

Subscription.create!([{name: 'Indian', price: 12}, {name: 'Chinese', price: 15}, {name: 'Malay', price: 10}, {name: 'Italian', price: 22}, {name: 'Western', price: 15}, {name: 'Japanese', price: 18}])
User.create!([{email: 'leon@example.com', password: 'password', password_confirmation: 'password'}, {email: 'sam@example.com', password: 'password', password_confirmation: 'password'}, {email: 'julian@example.com', password: 'password', password_confirmation: 'password'}, {email: 'jay@example.com', password: 'password', password_confirmation: 'password'}])
# TESTING USING THIS 
SubscriptionsUsers.create!([{user_id: 1, subscription_id: 5}, {user_id: 2, subscription_id: 5}, {user_id: 3, subscription_id: 5}, {user_id: 4, subscription_id: 5}])
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?