admin = User.create!(
  email: "admin@wyeworks.com",
  password: "12341234",
  admin: true
)

marce = User.create!(
  email: "marcelo@wyeworks.com",
  password: "12341234",
  admin: false
)

leo = User.create!(
  email: "leonardo@wyeworks.com",
  password: "12341234",
  admin: false
)

# Admin orders
Order.create!(
  description: "Championes",
  total: 100,
  user_id: admin.id
)

Order.create!(
  description: "Mac",
  total: 500,
  user_id: admin.id
)

# Marcelo orders
Order.create!(
  description: "Chicles",
  total: 200,
  user_id: marce.id
)

Order.create!(
  description: "Bombones",
  total: 600,
  user_id: marce.id
)

Order.create!(
  description: "Auto",
  total: 1800,
  user_id: marce.id
)

# Leonardo orders
Order.create!(
  description: "Camisa",
  total: 30,
  user_id: leo.id
)

Order.create!(
  description: "Moto pintona",
  total: 100,
  user_id: leo.id
)
