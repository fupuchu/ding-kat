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
User.create!(first_name: 'Leon', last_name: 'Dingkat', email: 'leon@example.com', password: 'password', password_confirmation: 'password')
User.create!(first_name: 'Sam', last_name: 'Dingkat', email: 'sam@example.com', password: 'password', password_confirmation: 'password')
User.create!(first_name: 'Julian', last_name: 'Dingkat', email: 'julian@example.com', password: 'password', password_confirmation: 'password')
User.create!(first_name: 'Jay', last_name: 'Dingkat', email: 'jay@example.com', password: 'password', password_confirmation: 'password')
Menu.create!(name: 'Chinese Cuisine', price: 45, line_1: 'Chicken or Pork', line_2: 'Fresh Vegetables', line_3: 'Daily Soup', line_4: 'Fragrant White Rice', img_src: 'food-chinese.jpg')
Menu.create!(name: 'Malay Cuisine', price: 45, line_1: 'Chicken or Mutton', line_2: 'Fresh Vegetables', line_3: 'Daily Soup', line_4: 'Fragrant White Rice', img_src: 'food-malay.jpg')
Menu.create!(name: 'Indian Cuisine', price: 45, line_1: 'Chicken or Mutton', line_2: 'Fresh Vegetables', line_3: 'Daily Soup', line_4: 'Basmati Rice', img_src: 'food-indian.jpg')
Menu.create!(name: 'Japanese Bento', price: 60, line_1: 'Chicken / Beef / Fish', line_2: 'Fresh Japanese Vegetables', line_3: 'Daily Soup', line_4: 'Short Grain Rice', img_src: 'food-japanese.jpg')
Menu.create!(name: 'Dingkat Speshul', price: 80, line_1: 'Fish or Beef', line_2: 'Fresh Vegetables/Salad', line_3: 'Gourmet Soup', line_4: 'Rice/Pasta/Noodles/Potato', img_src: 'DingkatLogo.png')
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')