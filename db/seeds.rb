# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
marce = User.create!(
  email: "marcelo@wyeworks.com",
  password: "12341234",
  admin: false
)
leo = User.create!(
  email: "leo@wyeworks.com",
  password: "12341234",
  admin: false
)
admin = User.create!(
  email: "admin@wyeworks.com",
  password: "12341234",
  admin: true
)

Order.create!(
  description: "Orden",
  total: 200,
  user_id: admin.id
)

Order.create!(
  description: "Orden",
  total: 50,
  user_id: marce.id
)
Order.create!(
  description: "Orden",
  total: 100,
  user_id: leo.id
)
